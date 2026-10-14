import { sql } from 'drizzle-orm';
import { db } from '../../db/connection';
import { users } from '../../db/schema';
import { eq } from 'drizzle-orm';

export interface SimilarRoutinesResult {
  similarCount: number | null;
  totalUsers: number;
  showable: boolean;
}

export class StatsService {
  /**
   * Counts other users whose wake time and bedtime are both within 60 minutes
   * of the caller's schedule.
   * Returns aggregate data only.
   * Threshold: showable is true ONLY when similarCount >= 25;
   * otherwise showable is false and exact count is NOT revealed (null).
   */
  async getSimilarRoutines(
    userId: string,
    fallbackWakeTime?: string,
    fallbackBedtime?: string,
  ): Promise<SimilarRoutinesResult> {
    // 1. Fetch caller's current wake_time and bedtime
    const [caller] = await db
      .select({
        wakeTime: users.wakeTime,
        bedtime: users.bedtime,
      })
      .from(users)
      .where(eq(users.id, userId))
      .limit(1);

    const wakeStr = caller?.wakeTime ?? fallbackWakeTime ?? '07:00:00';
    const bedStr = caller?.bedtime ?? fallbackBedtime ?? '23:00:00';

    // Parse hours and minutes into minutes from midnight
    const [wakeH, wakeM] = wakeStr.split(':').map((v) => parseInt(v, 10) || 0);
    const [bedH, bedM] = bedStr.split(':').map((v) => parseInt(v, 10) || 0);

    const callerWakeMinutes = (wakeH * 60 + wakeM) % 1440;
    const callerBedMinutes = (bedH * 60 + bedM) % 1440;

    // 2. Execute SELECT-only query using LEAST(abs, 1440 - abs) <= 60 for circular 24h clock
    const query = sql`
      SELECT
        COUNT(*) FILTER (
          WHERE id != ${userId}
            AND wake_time IS NOT NULL
            AND bedtime IS NOT NULL
            AND LEAST(
              ABS((EXTRACT(HOUR FROM wake_time) * 60 + EXTRACT(MINUTE FROM wake_time)) - ${callerWakeMinutes}),
              1440 - ABS((EXTRACT(HOUR FROM wake_time) * 60 + EXTRACT(MINUTE FROM wake_time)) - ${callerWakeMinutes})
            ) <= 60
            AND LEAST(
              ABS((EXTRACT(HOUR FROM bedtime) * 60 + EXTRACT(MINUTE FROM bedtime)) - ${callerBedMinutes}),
              1440 - ABS((EXTRACT(HOUR FROM bedtime) * 60 + EXTRACT(MINUTE FROM bedtime)) - ${callerBedMinutes})
            ) <= 60
        )::int AS similar_count,
        COUNT(*) FILTER (WHERE id != ${userId})::int AS total_users
      FROM ${users}
    `;

    const result = await db.execute<{
      similar_count: number;
      total_users: number;
    }>(query);

    const row = result.rows[0];
    const similarCountRaw = row?.similar_count ?? 0;
    const totalUsers = row?.total_users ?? 0;

    const showable = similarCountRaw >= 25;

    return {
      similarCount: showable ? similarCountRaw : null,
      totalUsers,
      showable,
    };
  }
}

export const statsService = new StatsService();

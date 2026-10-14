import { eq, and, isNotNull, isNull, asc } from 'drizzle-orm';
import { db } from '../../db/connection';
import {
  planItems,
  timeEntries,
  dailyPlans,
  categories,
} from '../../db/schema';
import { PlanItemWithCategory } from '../plans/plans.service';

export interface TimerStatus {
  serverTime: string;
  planId: string | null;
  planDate: string | null;
  activeItem: PlanItemWithCategory | null;
  items: PlanItemWithCategory[];
}

export class TimerService {
  private static async getItemsForPlan(
    planId: string,
  ): Promise<PlanItemWithCategory[]> {
    return db
      .select({
        id: planItems.id,
        dailyPlanId: planItems.dailyPlanId,
        categoryId: planItems.categoryId,
        categoryName: categories.name,
        categoryDescription: categories.description,
        categoryColor: categories.color,
        categoryIcon: categories.icon,
        plannedSeconds: planItems.plannedSeconds,
        remainingSeconds: planItems.remainingSeconds,
        startedAt: planItems.startedAt,
      })
      .from(planItems)
      .innerJoin(categories, eq(planItems.categoryId, categories.id))
      .where(eq(planItems.dailyPlanId, planId))
      .orderBy(asc(categories.sortOrder));
  }

  static async pauseTimer(
    userId: string,
  ): Promise<{ pausedItem: PlanItemWithCategory | null; message: string }> {
    const [runningItem] = await db
      .select()
      .from(planItems)
      .where(
        and(eq(planItems.userId, userId), isNotNull(planItems.startedAt)),
      )
      .limit(1);

    if (!runningItem || !runningItem.startedAt) {
      return { pausedItem: null, message: 'No running timer found' };
    }

    const now = new Date();
    const elapsedSeconds = Math.max(
      0,
      Math.floor(
        (now.getTime() - new Date(runningItem.startedAt).getTime()) / 1000,
      ),
    );
    const newRemainingSeconds = runningItem.remainingSeconds - elapsedSeconds;

    // Update plan item: save updated remaining_seconds and clear started_at
    await db
      .update(planItems)
      .set({
        remainingSeconds: newRemainingSeconds,
        startedAt: null,
      })
      .where(eq(planItems.id, runningItem.id));

    // Close open time entry
    await db
      .update(timeEntries)
      .set({ endedAt: now })
      .where(
        and(
          eq(timeEntries.planItemId, runningItem.id),
          eq(timeEntries.userId, userId),
          isNull(timeEntries.endedAt),
        ),
      );

    // Fetch updated item with category details
    const [updatedWithCategory] = await db
      .select({
        id: planItems.id,
        dailyPlanId: planItems.dailyPlanId,
        categoryId: planItems.categoryId,
        categoryName: categories.name,
        categoryDescription: categories.description,
        categoryColor: categories.color,
        categoryIcon: categories.icon,
        plannedSeconds: planItems.plannedSeconds,
        remainingSeconds: planItems.remainingSeconds,
        startedAt: planItems.startedAt,
      })
      .from(planItems)
      .innerJoin(categories, eq(planItems.categoryId, categories.id))
      .where(eq(planItems.id, runningItem.id))
      .limit(1);

    return {
      pausedItem: updatedWithCategory || null,
      message: 'Timer paused successfully',
    };
  }

  static async startTimer(
    userId: string,
    planItemId: string,
  ): Promise<{ activeItem: PlanItemWithCategory; serverTime: string }> {
    // 1. Verify target plan item belongs to user
    const [targetItem] = await db
      .select()
      .from(planItems)
      .where(and(eq(planItems.id, planItemId), eq(planItems.userId, userId)))
      .limit(1);

    if (!targetItem) {
      const err = new Error('Plan item not found');
      (err as any).statusCode = 404;
      throw err;
    }

    // If this item is already running, return it directly
    if (targetItem.startedAt) {
      const [itemWithCategory] = await db
        .select({
          id: planItems.id,
          dailyPlanId: planItems.dailyPlanId,
          categoryId: planItems.categoryId,
          categoryName: categories.name,
          categoryDescription: categories.description,
          categoryColor: categories.color,
          categoryIcon: categories.icon,
          plannedSeconds: planItems.plannedSeconds,
          remainingSeconds: planItems.remainingSeconds,
          startedAt: planItems.startedAt,
        })
        .from(planItems)
        .innerJoin(categories, eq(planItems.categoryId, categories.id))
        .where(eq(planItems.id, planItemId))
        .limit(1);

      return {
        activeItem: itemWithCategory,
        serverTime: new Date().toISOString(),
      };
    }

    // 2. Pause any currently running timer for this user
    await this.pauseTimer(userId);

    // 3. Start target item
    const now = new Date();
    await db
      .update(planItems)
      .set({ startedAt: now })
      .where(eq(planItems.id, planItemId));

    // 4. Create new time entry
    await db.insert(timeEntries).values({
      planItemId,
      userId,
      startedAt: now,
      endedAt: null,
    });

    const [activeItem] = await db
      .select({
        id: planItems.id,
        dailyPlanId: planItems.dailyPlanId,
        categoryId: planItems.categoryId,
        categoryName: categories.name,
        categoryDescription: categories.description,
        categoryColor: categories.color,
        categoryIcon: categories.icon,
        plannedSeconds: planItems.plannedSeconds,
        remainingSeconds: planItems.remainingSeconds,
        startedAt: planItems.startedAt,
      })
      .from(planItems)
      .innerJoin(categories, eq(planItems.categoryId, categories.id))
      .where(eq(planItems.id, planItemId))
      .limit(1);

    return {
      activeItem,
      serverTime: now.toISOString(),
    };
  }

  static async getStatus(
    userId: string,
    dateStr: string,
  ): Promise<TimerStatus> {
    const serverTime = new Date().toISOString();

    const [plan] = await db
      .select()
      .from(dailyPlans)
      .where(
        and(eq(dailyPlans.userId, userId), eq(dailyPlans.planDate, dateStr)),
      )
      .limit(1);

    if (!plan) {
      return {
        serverTime,
        planId: null,
        planDate: dateStr,
        activeItem: null,
        items: [],
      };
    }

    const items = await this.getItemsForPlan(plan.id);
    const activeItem = items.find((item) => item.startedAt !== null) || null;

    return {
      serverTime,
      planId: plan.id,
      planDate: plan.planDate,
      activeItem,
      items,
    };
  }
}

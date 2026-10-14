import { eq } from 'drizzle-orm';
import { db } from '../../db/connection';
import { users } from '../../db/schema';
import { UpdateProfileInput } from './users.validation';

export interface UserProfileResponse {
  id: string;
  email: string;
  displayName: string | null;
  wakeTime: string | null;
  bedtime: string | null;
  routineMinutes: number | null;
  onboardingDone: boolean | null;
  createdAt: Date | null;
}

export class UsersService {
  static async getProfile(userId: string): Promise<UserProfileResponse> {
    const [user] = await db
      .select({
        id: users.id,
        email: users.email,
        displayName: users.displayName,
        wakeTime: users.wakeTime,
        bedtime: users.bedtime,
        routineMinutes: users.routineMinutes,
        onboardingDone: users.onboardingDone,
        createdAt: users.createdAt,
      })
      .from(users)
      .where(eq(users.id, userId))
      .limit(1);

    if (!user) {
      const err = new Error('User not found');
      (err as any).statusCode = 404;
      throw err;
    }

    return user;
  }

  static async updateProfile(
    userId: string,
    data: UpdateProfileInput,
  ): Promise<UserProfileResponse> {
    const [updatedUser] = await db
      .update(users)
      .set(data)
      .where(eq(users.id, userId))
      .returning({
        id: users.id,
        email: users.email,
        displayName: users.displayName,
        wakeTime: users.wakeTime,
        bedtime: users.bedtime,
        routineMinutes: users.routineMinutes,
        onboardingDone: users.onboardingDone,
        createdAt: users.createdAt,
      });

    if (!updatedUser) {
      const err = new Error('User not found');
      (err as any).statusCode = 404;
      throw err;
    }

    return updatedUser;
  }
}

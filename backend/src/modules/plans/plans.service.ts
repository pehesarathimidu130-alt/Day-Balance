import { eq, and, asc, notInArray } from 'drizzle-orm';
import { db } from '../../db/connection';
import { dailyPlans, planItems, categories } from '../../db/schema';
import { CreatePlanInput, UpdatePlanInput } from './plans.validation';

export interface PlanItemWithCategory {
  id: string;
  dailyPlanId: string;
  categoryId: string;
  categoryName: string;
  categoryDescription: string;
  categoryColor: string;
  categoryIcon: string;
  plannedSeconds: number;
  remainingSeconds: number;
  startedAt: Date | null;
}

export interface PlanDetails {
  id: string;
  userId: string;
  planDate: string;
  wakingSeconds: number;
  createdAt: Date | null;
  items: PlanItemWithCategory[];
}

export class PlansService {
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

  static async createPlan(
    userId: string,
    data: CreatePlanInput,
  ): Promise<PlanDetails> {
    // Check if plan already exists for this date
    const [existing] = await db
      .select({ id: dailyPlans.id })
      .from(dailyPlans)
      .where(
        and(
          eq(dailyPlans.userId, userId),
          eq(dailyPlans.planDate, data.planDate),
        ),
      )
      .limit(1);

    if (existing) {
      const err = new Error(
        `A plan for ${data.planDate} already exists. Update it instead.`,
      );
      (err as any).statusCode = 409;
      throw err;
    }

    // Insert daily plan
    const [plan] = await db
      .insert(dailyPlans)
      .values({
        userId,
        planDate: data.planDate,
        wakingSeconds: data.wakingSeconds,
      })
      .returning();

    // Insert all plan items
    if (data.items.length > 0) {
      await db.insert(planItems).values(
        data.items.map((item) => ({
          dailyPlanId: plan.id,
          userId,
          categoryId: item.categoryId,
          plannedSeconds: item.plannedSeconds,
          remainingSeconds: item.plannedSeconds,
        })),
      );
    }

    const items = await this.getItemsForPlan(plan.id);
    return {
      id: plan.id,
      userId: plan.userId,
      planDate: plan.planDate,
      wakingSeconds: plan.wakingSeconds,
      createdAt: plan.createdAt,
      items,
    };
  }

  static async getPlanByDate(
    userId: string,
    planDate: string,
  ): Promise<PlanDetails | null> {
    const [plan] = await db
      .select()
      .from(dailyPlans)
      .where(
        and(eq(dailyPlans.userId, userId), eq(dailyPlans.planDate, planDate)),
      )
      .limit(1);

    if (!plan) return null;

    const items = await this.getItemsForPlan(plan.id);
    return {
      id: plan.id,
      userId: plan.userId,
      planDate: plan.planDate,
      wakingSeconds: plan.wakingSeconds,
      createdAt: plan.createdAt,
      items,
    };
  }

  static async getPlanById(
    userId: string,
    planId: string,
  ): Promise<PlanDetails> {
    const [plan] = await db
      .select()
      .from(dailyPlans)
      .where(and(eq(dailyPlans.id, planId), eq(dailyPlans.userId, userId)))
      .limit(1);

    if (!plan) {
      const err = new Error('Daily plan not found');
      (err as any).statusCode = 404;
      throw err;
    }

    const items = await this.getItemsForPlan(plan.id);
    return {
      id: plan.id,
      userId: plan.userId,
      planDate: plan.planDate,
      wakingSeconds: plan.wakingSeconds,
      createdAt: plan.createdAt,
      items,
    };
  }

  static async updatePlan(
    userId: string,
    planId: string,
    data: UpdatePlanInput,
  ): Promise<PlanDetails> {
    const [existingPlan] = await db
      .select()
      .from(dailyPlans)
      .where(and(eq(dailyPlans.id, planId), eq(dailyPlans.userId, userId)))
      .limit(1);

    if (!existingPlan) {
      const err = new Error('Daily plan not found');
      (err as any).statusCode = 404;
      throw err;
    }

    const wakingSeconds = data.wakingSeconds ?? existingPlan.wakingSeconds;

    if (data.items) {
      const totalPlanned = data.items.reduce(
        (sum, item) => sum + item.plannedSeconds,
        0,
      );
      if (totalPlanned > wakingSeconds) {
        const err = new Error('Total planned time cannot exceed waking hours');
        (err as any).statusCode = 400;
        throw err;
      }

      // Update or insert items
      const existingItems = await db
        .select()
        .from(planItems)
        .where(eq(planItems.dailyPlanId, planId));

      const existingMap = new Map(existingItems.map((i) => [i.categoryId, i]));
      const updatedCategoryIds: string[] = [];

      for (const item of data.items) {
        updatedCategoryIds.push(item.categoryId);
        const existingItem = existingMap.get(item.categoryId);

        if (existingItem) {
          const usedSeconds =
            existingItem.plannedSeconds - existingItem.remainingSeconds;
          const newRemaining = item.plannedSeconds - usedSeconds;

          await db
            .update(planItems)
            .set({
              plannedSeconds: item.plannedSeconds,
              remainingSeconds: newRemaining,
            })
            .where(eq(planItems.id, existingItem.id));
        } else {
          await db.insert(planItems).values({
            dailyPlanId: planId,
            userId,
            categoryId: item.categoryId,
            plannedSeconds: item.plannedSeconds,
            remainingSeconds: item.plannedSeconds,
          });
        }
      }

      // Remove items no longer in plan
      if (updatedCategoryIds.length > 0) {
        await db
          .delete(planItems)
          .where(
            and(
              eq(planItems.dailyPlanId, planId),
              notInArray(planItems.categoryId, updatedCategoryIds),
            ),
          );
      }
    }

    if (data.wakingSeconds !== undefined) {
      await db
        .update(dailyPlans)
        .set({ wakingSeconds: data.wakingSeconds })
        .where(eq(dailyPlans.id, planId));
    }

    return this.getPlanById(userId, planId);
  }
}

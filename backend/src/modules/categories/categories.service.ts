import { eq, inArray, asc } from 'drizzle-orm';
import { db } from '../../db/connection';
import { categories, userCategories } from '../../db/schema';

export interface Category {
  id: string;
  name: string;
  description: string;
  color: string;
  icon: string;
  sortOrder: number;
}

export class CategoriesService {
  static async getAllCategories(): Promise<Category[]> {
    return db.select().from(categories).orderBy(asc(categories.sortOrder));
  }

  static async getUserCategories(userId: string): Promise<Category[]> {
    return db
      .select({
        id: categories.id,
        name: categories.name,
        description: categories.description,
        color: categories.color,
        icon: categories.icon,
        sortOrder: categories.sortOrder,
      })
      .from(userCategories)
      .innerJoin(categories, eq(userCategories.categoryId, categories.id))
      .where(eq(userCategories.userId, userId))
      .orderBy(asc(categories.sortOrder));
  }

  static async setUserCategories(
    userId: string,
    categoryIds: string[],
  ): Promise<Category[]> {
    const uniqueIds = Array.from(new Set(categoryIds));

    // Validate that all supplied IDs exist in the seeded categories table
    const existing = await db
      .select({ id: categories.id })
      .from(categories)
      .where(inArray(categories.id, uniqueIds));

    if (existing.length !== uniqueIds.length) {
      const err = new Error('One or more invalid category IDs provided');
      (err as any).statusCode = 400;
      throw err;
    }

    // Replace user's selected categories
    await db.delete(userCategories).where(eq(userCategories.userId, userId));

    if (uniqueIds.length > 0) {
      await db.insert(userCategories).values(
        uniqueIds.map((categoryId) => ({
          userId,
          categoryId,
        })),
      );
    }

    return this.getUserCategories(userId);
  }
}

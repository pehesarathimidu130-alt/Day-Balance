import {
  pgTable,
  uuid,
  text,
  integer,
  boolean,
  time,
  date,
  timestamp,
  uniqueIndex,
} from 'drizzle-orm/pg-core';
import { sql } from 'drizzle-orm';

// ─── Users ──────────────────────────────────────────────────────────────────────

export const users = pgTable('users', {
  id: uuid('id').primaryKey().default(sql`gen_random_uuid()`),
  email: text('email').unique().notNull(),
  passwordHash: text('password_hash').notNull(),
  displayName: text('display_name'),
  wakeTime: time('wake_time'),
  bedtime: time('bedtime'),
  routineMinutes: integer('routine_minutes').default(0),
  onboardingDone: boolean('onboarding_done').default(false),
  createdAt: timestamp('created_at', { withTimezone: true }).default(sql`now()`),
});

// ─── Refresh Tokens ─────────────────────────────────────────────────────────────

export const refreshTokens = pgTable('refresh_tokens', {
  id: uuid('id').primaryKey().default(sql`gen_random_uuid()`),
  userId: uuid('user_id')
    .notNull()
    .references(() => users.id, { onDelete: 'cascade' }),
  tokenHash: text('token_hash').notNull(),
  expiresAt: timestamp('expires_at', { withTimezone: true }),
  revokedAt: timestamp('revoked_at', { withTimezone: true }),
  createdAt: timestamp('created_at', { withTimezone: true }).default(sql`now()`),
});

// ─── Categories (seed-only, read-only to clients) ───────────────────────────────

export const categories = pgTable('categories', {
  id: text('id').primaryKey(),
  name: text('name').notNull(),
  description: text('description').notNull(),
  color: text('color').notNull(),
  icon: text('icon').notNull(),
  sortOrder: integer('sort_order').notNull(),
});

// ─── User Categories (many-to-many: which categories a user has selected) ───────

export const userCategories = pgTable(
  'user_categories',
  {
    userId: uuid('user_id')
      .notNull()
      .references(() => users.id, { onDelete: 'cascade' }),
    categoryId: text('category_id')
      .notNull()
      .references(() => categories.id, { onDelete: 'cascade' }),
  },
  (table) => ({
    pk: uniqueIndex('user_categories_pk').on(table.userId, table.categoryId),
  }),
);

// ─── Daily Plans ────────────────────────────────────────────────────────────────

export const dailyPlans = pgTable(
  'daily_plans',
  {
    id: uuid('id').primaryKey().default(sql`gen_random_uuid()`),
    userId: uuid('user_id')
      .notNull()
      .references(() => users.id, { onDelete: 'cascade' }),
    planDate: date('plan_date').notNull(),
    wakingSeconds: integer('waking_seconds').notNull(),
    createdAt: timestamp('created_at', { withTimezone: true }).default(sql`now()`),
  },
  (table) => ({
    uniqueUserDate: uniqueIndex('daily_plans_user_date').on(table.userId, table.planDate),
  }),
);

// ─── Plan Items ─────────────────────────────────────────────────────────────────

export const planItems = pgTable(
  'plan_items',
  {
    id: uuid('id').primaryKey().default(sql`gen_random_uuid()`),
    dailyPlanId: uuid('daily_plan_id')
      .notNull()
      .references(() => dailyPlans.id, { onDelete: 'cascade' }),
    userId: uuid('user_id')
      .notNull()
      .references(() => users.id, { onDelete: 'cascade' }),
    categoryId: text('category_id')
      .notNull()
      .references(() => categories.id),
    plannedSeconds: integer('planned_seconds').notNull(),
    remainingSeconds: integer('remaining_seconds').notNull(),
    startedAt: timestamp('started_at', { withTimezone: true }),
  },
  (table) => ({
    uniquePlanCategory: uniqueIndex('plan_items_plan_category').on(
      table.dailyPlanId,
      table.categoryId,
    ),
    // Partial unique index: only one timer running per user at a time
    uniqueRunningTimer: uniqueIndex('plan_items_one_running_timer')
      .on(table.userId)
      .where(sql`started_at IS NOT NULL`),
  }),
);

// ─── Time Entries ───────────────────────────────────────────────────────────────

export const timeEntries = pgTable('time_entries', {
  id: uuid('id').primaryKey().default(sql`gen_random_uuid()`),
  planItemId: uuid('plan_item_id')
    .notNull()
    .references(() => planItems.id, { onDelete: 'cascade' }),
  userId: uuid('user_id')
    .notNull()
    .references(() => users.id, { onDelete: 'cascade' }),
  startedAt: timestamp('started_at', { withTimezone: true }).notNull(),
  endedAt: timestamp('ended_at', { withTimezone: true }),
});

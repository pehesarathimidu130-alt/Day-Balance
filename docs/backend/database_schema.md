# Database Schema
Status: DRAFT
Location: `/backend/src/db/schema.ts`, `/backend/src/db/connection.ts`, `/backend/src/db/seed.ts`, `/backend/drizzle.config.ts`

## Done

- Created Drizzle ORM schema in `src/db/schema.ts` with all 7 tables:
  - **users**: id (uuid PK), email (unique, not null), password_hash, display_name, wake_time (time), bedtime (time), routine_minutes (default 0), onboarding_done (default false), created_at
  - **refresh_tokens**: id (uuid PK), user_id (FK → users, cascade), token_hash, expires_at, revoked_at (nullable), created_at
  - **categories**: id (text PK, slug), name, description, color, icon, sort_order. Seeded, read-only to clients
  - **user_categories**: (user_id, category_id) composite unique index
  - **daily_plans**: id (uuid PK), user_id (FK), plan_date (date), waking_seconds (int), created_at. Unique(user_id, plan_date)
  - **plan_items**: id (uuid PK), daily_plan_id (FK, cascade), user_id (FK), category_id (FK), planned_seconds, remaining_seconds, started_at (nullable). Unique(daily_plan_id, category_id). Partial unique index on (user_id) WHERE started_at IS NOT NULL
  - **time_entries**: id (uuid PK), plan_item_id (FK, cascade), user_id (FK), started_at, ended_at (nullable)
- Created `src/db/connection.ts` — Neon serverless driver + Drizzle ORM connection
- Created `src/db/seed.ts` — Seeds the 7 categories with onConflictDoNothing
- Created `drizzle.config.ts` — Drizzle Kit config for generating and running migrations

## Notes for the next developer
- The migration file has NOT been generated yet — user needs to run `npm run db:generate` after setting DATABASE_URL
- The partial unique index on plan_items ensures only one timer runs per user at a time (database-level enforcement)
- user_categories uses a uniqueIndex instead of a composite primary key because Drizzle's pgTable API handles this more cleanly
- The seed script is idempotent (onConflictDoNothing)
- Connection uses `@neondatabase/serverless` (HTTP driver), not `pg` TCP driver — this works with Neon's serverless model

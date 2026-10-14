# Plans Module
Status: DRAFT
Location: `/backend/src/modules/plans/`

## Done
- Created `plans.validation.ts`:
  - `planItemSchema`: validates categoryId and plannedSeconds >= 0
  - `createPlanSchema`: validates planDate (YYYY-MM-DD), wakingSeconds, items list, and ensures sum of plannedSeconds <= wakingSeconds
  - `updatePlanSchema`: optional wakingSeconds and items array
  - `planDateQuerySchema`: optional date parameter
- Created `plans.service.ts`:
  - `createPlan`: prevents duplicates for same date (409 Conflict), inserts into `daily_plans` and `plan_items` with initial `remainingSeconds = plannedSeconds`
  - `getPlanByDate`: retrieves plan for date with joined categories (name, description, color, icon)
  - `getPlanById`: retrieves plan by plan ID with joined categories
  - `updatePlan`: calculates elapsed time for already adjusted categories, adjusts `remainingSeconds`, adds new items, and cleans up removed items
- Created `plans.controller.ts`:
  - `createPlan`: handles `POST /api/plans`
  - `getToday`: handles `GET /api/plans/today` (with optional `?date=YYYY-MM-DD` query)
  - `getById`: handles `GET /api/plans/:id`
  - `updatePlan`: handles `PATCH /api/plans/:id`
- Created `plans.router.ts`:
  - All routes protected by `authenticate` middleware
  - Ordered routes so `/today` precedes `/:id`
- Mounted `/api/plans` in `app.ts`

## Notes for the next developer
- waking_seconds is calculated on the client and sent with the plan
- Plan items use 30-minute steps in the UI, but seconds in the DB for precision
- Soft nudge if Entertainment > 30% — enforced on client side, not server
- planned_seconds must be ≥ 0 for each item
- The "Hours left to plan" counter is purely a client-side calculation

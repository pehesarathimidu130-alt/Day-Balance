# Plans Module
Status: PLANNED
Location: `/backend/src/modules/plans/`

## Plan
- [ ] Create `plans.router.ts` with routes:
  - POST `/api/plans` — create daily plan with plan items
  - GET `/api/plans/today` — get today's plan with items
  - GET `/api/plans/:id` — get a specific plan
  - PATCH `/api/plans/:id` — update plan items (edit plan)
- [ ] Create `plans.controller.ts` with handler functions
- [ ] Create `plans.service.ts` with business logic:
  - Create daily_plan row + plan_items rows in a transaction
  - Validate total planned_seconds ≤ waking_seconds
  - Set remaining_seconds = planned_seconds on creation
  - Enforce unique(user_id, plan_date) — one plan per day
- [ ] Create `plans.validation.ts` with zod schemas
- [ ] All routes require `authenticate` middleware
- [ ] Wire up the plans router in `app.ts`

## Notes for the next developer
- waking_seconds is calculated on the client and sent with the plan
- Plan items use 30-minute steps in the UI, but seconds in the DB for precision
- Soft nudge if Entertainment > 30% — enforced on client side, not server
- planned_seconds must be ≥ 0 for each item
- The "Hours left to plan" counter is purely a client-side calculation

# Plan Screen
Status: DRAFT
Location: `/mobile/lib/features/planning/presentation/plan_screen.dart`

> **NOTE**: TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs.

## Draft Implementation
- Created `PlanItemModel` and `DailyPlanModel` domain entities
- Created `PlansRepository` for creating, loading, and patching daily plans
- Created `PlanController`:
  - Automatically loads user's net waking capacity from profile
  - Prepopulates user's selected categories
  - Loads existing plan if already created for today (enabling edit mode)
  - 30-minute (1800 second) stepper controls with min/max clamps
  - Real-time "Hours left to plan" countdown and progress bar
  - Entertainment ratio calculation with soft nudge warning if entertainment exceeds 30% of waking capacity
  - Enforces total planned time cannot exceed available waking hours
- Created `PlanScreen` with cards, steppers, and summary card
- Wired route `/plan` into `appRouter`

## Notes for the next developer
- Rebuild UI strictly according to Figma designs (`/figma/08_daily_planning.png`, `/figma/08_daily_planning_over_allocated.png`, `/figma/08_daily_planning_zero_hours_left.png`) when instructed.

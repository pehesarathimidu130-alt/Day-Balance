# Plan Screen
Status: DONE
Location: `/mobile/lib/features/planning/presentation/plan_screen.dart`

## Done
- Created `PlanItemModel` and `DailyPlanModel` domain entities
- Created `PlansRepository` for creating, loading, and patching daily plans
- Created `PlanController`:
  - Automatically loads user's net waking capacity from profile
  - Prepopulates user's selected categories
  - Loads existing plan if already created for today (enabling edit mode)
  - 30-minute (1800 second) stepper controls with min/max clamps
  - Real-time "Hours left to plan" countdown and progress bar
  - Entertainment ratio calculation with friendly soft nudge warning if entertainment exceeds 30% of waking capacity
  - Enforces total planned time cannot exceed available waking hours
- Created `PlanScreen` with high-aesthetic Material 3 cards, steppers, and sticky summary card
- Wired route `/plan` into `appRouter`
- Verified with `flutter analyze` and `flutter test`

## Notes for the next developer
- Stepper increments/decrements by 1800 seconds (30 minutes)
- Hours left = waking_seconds - sum(planned_seconds)
- Overtime warnings are purely client side hints

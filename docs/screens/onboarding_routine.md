# Onboarding: Routine Screen
Status: DONE
Location: `/mobile/lib/features/onboarding/presentation/onboarding_routine_screen.dart`

## Done
- Created `OnboardingRoutineScreen`:
  - Stepper buttons (+/- 15 min increments) with tabular minute counter
  - Preset quick chips (30m, 45m, 60m, 90m, 120m)
  - Detailed breakdown card: Gross Waking Time - Routine Deductions = Net Hours to Budget
  - Calls `onboardingControllerProvider.notifier.saveRoutine()` (patches `/api/users/me`)
  - Navigates to `/onboarding/categories`
- Wired into `appRouter`
- Verified via `flutter analyze` and `flutter test`

## Notes for the next developer
- routineMinutes is stored as total minutes in DB
- Step 2 of 3 in onboarding flow

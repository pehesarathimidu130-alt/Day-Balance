# Onboarding: Routine Screen
Status: DRAFT
Location: `/mobile/lib/features/onboarding/presentation/onboarding_routine_screen.dart`

> **NOTE**: TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs.

## Draft Implementation
- Stepper buttons (+/- 15 min increments) with minute counter
- Preset quick chips (30m, 45m, 60m, 90m, 120m)
- Breakdown card: Gross Waking Time - Routine Deductions = Net Hours to Budget
- Calls `onboardingControllerProvider.notifier.saveRoutine()` (patches `/api/users/me`)
- Navigates to `/onboarding/categories`

## Notes for the next developer
- Rebuild UI strictly according to Figma design (`design/exports/png/05_onboarding_routine.png` and `design/exports/dart/_05_onboarding_routine.dart`) when instructed.

# Onboarding: Schedule Screen
Status: DRAFT
Location: `/mobile/lib/features/onboarding/presentation/onboarding_schedule_screen.dart`

> **NOTE**: TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs.

## Draft Implementation
- Wake time and bedtime selector cards with custom Material 3 `showTimePicker`
- Dynamic calculation of gross waking hours (handles overnight spans)
- Summary card
- Calls `onboardingControllerProvider.notifier.saveSchedule()` (patches `/api/users/me`)
- Navigates to `/onboarding/routine`

## Notes for the next developer
- Rebuild UI strictly according to Figma design (`design/exports/png/04_onboarding_schedule.png` and `design/exports/dart/_04_onboarding_schedule.dart`) when instructed.

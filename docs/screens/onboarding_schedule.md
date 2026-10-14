# Onboarding: Schedule Screen
Status: DONE
Location: `/mobile/lib/features/onboarding/presentation/onboarding_schedule_screen.dart`

## Done
- Created `OnboardingScheduleScreen`:
  - Wake time and bedtime selector cards with custom Material 3 `showTimePicker`
  - Dynamic calculation of gross waking hours (correctly handles overnight spans where bedtime is past midnight)
  - Gradient calculation summary card
  - Calls `onboardingControllerProvider.notifier.saveSchedule()` (patches `/api/users/me`)
  - Navigates to `/onboarding/routine`
- Wired into `appRouter`
- Verified via `flutter analyze` and `flutter test`

## Notes for the next developer
- Gross waking hours = (bedtime - wake_time), modulo 24h
- Step 1 of 3 in onboarding flow

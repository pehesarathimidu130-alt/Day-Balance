# Onboarding: Schedule Screen
Status: DONE
Location: `/mobile/lib/features/onboarding/presentation/onboarding_schedule_screen.dart`

## Done
- [x] Rebuilt layout cleanly from Figma `_04_onboarding_schedule.dart` and `04_onboarding_schedule.png`
- [x] Top bar with `AppBackButton`
- [x] Step indicator `StepProgressBar(currentStep: 1)` ("YOUR DAY · 1 OF 3")
- [x] Title "When does your day begin?" (32sp) and subtitle "Start with your usual rhythm. You can change this whenever life shifts." (14sp)
- [x] Two `TapField` inputs: "Wake-up time" and "Bedtime" opening `showAppTimePicker` scrolling wheel dialog
- [x] InfoCard "Hours awake" with sun icon (`AppIcons.hoursAwake`), big hours (e.g. "16h 00m"), 2-color awake vs sleep progress bar, and summary caption
- [x] "Next, we’ll make room for your routines." caption
- [x] "Continue" primary button calling `controller.saveSchedule()` and navigating to `/onboarding/routine`
- [x] Unit tests for waking hours and overnight midnight crossing calculation (`mobile/test/schedule_calculation_test.dart`)
- [x] Widget tests in `mobile/test/onboarding_schedule_screen_test.dart`

# Onboarding: Result Screen
Status: DONE
Location: `/mobile/lib/features/onboarding/presentation/onboarding_result_screen.dart`

## Done
- [x] Read `design/exports/dart/_06_onboarding_result.dart` (no PNG, used .dart export only per instructions)
- [x] Top bar with `AppBackButton`
- [x] Step indicator `StepProgressBar(currentStep: 3)` ("YOUR DAY · 3 OF 3")
- [x] Horizon/sun illustration
- [x] Headline: "You have", big green `${state.netHoursFormatted}` (48sp `#49664D`), "per day. Let’s plan it." (32sp `#292E28`)
- [x] Breakdown list:
  - Hours awake: `${state.grossHoursFormatted}`
  - Morning routine: `− ${state.morningRoutineMinutes}m`
  - Wind-up routine: `− ${state.windUpRoutineMinutes}m`
  - 1dp divider `#DDDCD2`
  - Breathing room text: "Not every hour needs a job. A little breathing room is part of a good plan."
- [x] Primary button "Choose my categories" navigating to `/onboarding/categories`
- [x] Route `/onboarding/result` configured with `AppTransitions.sharedAxis` in `app_router.dart`
- [x] Widget test in `mobile/test/onboarding_result_screen_test.dart`

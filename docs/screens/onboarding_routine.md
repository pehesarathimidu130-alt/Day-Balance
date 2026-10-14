# Onboarding: Routine Screen
Status: DONE
Location: `/mobile/lib/features/onboarding/presentation/onboarding_routine_screen.dart`

## Done
- [x] Rebuilt layout cleanly from Figma `_05_onboarding_routine.dart` and `05_onboarding_routine.png`
- [x] Top bar with `AppBackButton`
- [x] Step indicator `StepProgressBar(currentStep: 2)` ("YOUR DAY · 2 OF 3")
- [x] Title "Leave room for the everyday." (32sp) and subtitle "Getting ready and winding down count too. Set this time aside before you plan." (14sp)
- [x] Morning routine row with `AppIcons.morningRoutine`, title "Morning routine", subtitle "Get ready, eat, ease into the day.", and `PillStepper` (15m step, default 45m)
- [x] Wind-up routine row with `AppIcons.windUpRoutine`, title "Wind-up routine", subtitle "Unplug and get ready for bed.", and `PillStepper` (15m step, default 45m)
- [x] InfoCard with warm background (`#EEE8DC`), "Xh awake − Xh Xm of routines", big green "Xh Xm to plan", and "Routines stay protected, outside your plan."
- [x] Caption "Adjust in 15-minute steps."
- [x] Primary button "See my daily hours" saving routine to backend and navigating to `/onboarding/result`
- [x] Unit and widget tests for routine calculations and constraints (`mobile/test/routine_calculation_test.dart`, `mobile/test/onboarding_routine_screen_test.dart`)

# Onboarding: Categories Screen
Status: DONE
Location: `/mobile/lib/features/onboarding/presentation/onboarding_categories_screen.dart`

## Done
- [x] Rebuilt layout cleanly from Figma `_07_choose_categories.dart` and `07_choose_categories.png`
- [x] Top bar with `AppBackButton` and title "Your categories" (22sp)
- [x] Heading block: "What fills your day?" (32sp) and "Keep what fits. You can change these later." (14sp)
- [x] Rendered 7 `CategoryTile`s (all selected by default, full opacity when selected, minimum 1 required)
- [x] Selected categories counter text: "X categories selected" (12sp)
- [x] Settings reminder caption: "You can add or remove categories anytime in Settings once you finish setup."
- [x] Primary button "Plan my day" with loading indicator, calling `controller.completeOnboarding()`
- [x] Navigates cleanly to `/home` on successful onboarding completion
- [x] Widget tests in `mobile/test/onboarding_categories_screen_test.dart`

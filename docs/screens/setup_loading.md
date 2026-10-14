# Onboarding: Setting Up (Loading) Screen
Status: DONE
Location: `/mobile/lib/features/onboarding/presentation/setting_up_screen.dart`

## Done
- [x] Blocked system back button with `PopScope(canPop: _hasError)` during active saving
- [x] CustomPainter calm sky scene animation matching our palette: dawn (sun rise/arc/set) -> dusk/night (moon arc/set, twinkling stars) -> sunrise settling as sage ready frame
- [x] 60 fps smooth easing, sky color blending across phases, soft horizon line, wrapped in RepaintBoundary, all controllers disposed
- [x] Text sequence rotation cross-fading every 1.8s from central constants file `setting_up_constants.dart`
- [x] Personal waking hours line dynamically computed from user's gross waking hours ("You're awake about X hours a day.")
- [x] Honest social proof: calls `GET /api/stats/similar-routines` with 1.5s timeout. If `showable` (>= 25), displays "{count} people have a routine like yours.", otherwise displays "Every plan leaves room for life."
- [x] Performs full save: wake time, bedtime, routine minutes, categories, and onboardingDone = true via `completeFullOnboarding()`
- [x] Minimum display time of ~4.5 seconds enforced before routing to `/plan`
- [x] Figma screen 16 style error state on failure: human message, "Try again" button (repeats save and animation), "Back" button (returns to `/onboarding/categories` preserving selections)
- [x] Reduce-motion accessibility mode (`MediaQuery.disableAnimations`): renders static sun with simple progress indicator and text without movement
- [x] Added `Semantics(label: 'Setting up your day')` with `excludeSemantics: true` on rapid cross-fading text to prevent screen-reader spam
- [x] Route `/onboarding/setting-up` added to `app_router.dart` with `AppTransitions.fadeThrough`
- [x] Unit tests for text sequence and threshold in `mobile/test/setting_up_constants_test.dart`
- [x] Comprehensive widget tests in `mobile/test/setting_up_screen_test.dart`
- [x] Live end-to-end verified against Neon PostgreSQL and Express backend

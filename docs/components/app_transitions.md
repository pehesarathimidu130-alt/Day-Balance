# Page Transitions
Status: DONE
Location: `/mobile/lib/core/router/app_transitions.dart`

## Done

- Created `AppTransitions` using `CustomTransitionPage` and the `animations` package.
- Forward navigation uses gentle horizontal shared-axis (`SharedAxisTransitionType.horizontal`, 300 ms, `Curves.easeOutCubic`).
- Back navigation uses reverse horizontal shared-axis (`Curves.easeInCubic`).
- Navigation between major app contexts (Auth to Onboarding, Onboarding to Home) uses `FadeThroughTransition`.
- Integrated across all routes in `mobile/lib/core/router/app_router.dart`.

## Notes for the next developer / testing
> **Performance Note**: Chrome debug mode is not a fair test of smoothness due to JS emulation overhead. Always evaluate animation smoothness and frame pacing using profile or release mode on a physical device (`flutter run --profile`).

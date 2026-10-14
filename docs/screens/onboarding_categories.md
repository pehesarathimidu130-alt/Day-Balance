# Onboarding: Categories Screen
Status: DRAFT
Location: `/mobile/lib/features/onboarding/presentation/onboarding_categories_screen.dart`

> **NOTE**: TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs.

## Draft Implementation
- Renders all 7 fixed categories from `kCategories` with icons, descriptions, and category colors
- Interactive multi-select toggles
- Calls `onboardingControllerProvider.notifier.completeOnboarding()`:
  - PUT `/api/categories/mine` with selected IDs
  - PATCH `/api/users/me` with `onboardingDone: true`
- Navigates to `/home` on completion

## Notes for the next developer
- Rebuild UI strictly according to Figma design (`design/exports/png/07_choose_categories.png` and `design/exports/dart/_07_choose_categories.dart`) when instructed.

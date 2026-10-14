# Welcome Screen
Status: DONE
Location: `/mobile/lib/features/auth/presentation/welcome_screen.dart`

## Done

- **Implementation from Figma Flutter Export (`figma/_01_welcome.dart` & `figma/01_welcome.png`)**:
  - Rebuilt the welcome landing screen using theme tokens and shared widgets.
  - Implemented `DayBalanceLogo` (`mobile/lib/shared/widgets/day_balance_logo.dart`) using Canvas vector drawing for the rising sun brand mark.
  - Header with `DayBalanceLogo` and "Day-Balance" title (22sp medium/bold, `#292E28`).
  - 32dp spacing below header.
  - Display heading "Make room\nfor your day." (40sp Display, `#292E28`).
  - 16dp spacing below heading.
  - Subtitle "Plan your hours. Do one thing at a time.\nLeave room for life." (16sp Body, `#62675D`).
  - Middle visual card illustration matching `_01_welcome.dart` lines 132-301:
    - Sand card background (`#EEE8DC`, radius 16).
    - Peeking rising sun graphic (100x86, `#E2CDAA` dome fill with 3 sage green rays).
    - Foreground card (`#FFFFFC`, radius 16, subtle elevation).
    - 3 preview category pills with exact Figma theme colors and hours:
      - Academic 3 h (`AppColors.academic` / `#D4DEE5`)
      - Life/Family 2 h (`AppColors.lifeFamily` / `#EBD3BC`)
      - Rest/Recovery 1 h (`AppColors.rest` / `#E9CFCE`)
  - Primary CTA "Get started" (`AppPrimaryButton`) navigating to `/register`.
  - 8dp spacing between action buttons.
  - Secondary CTA "Log in" (`AppSecondaryButton`) navigating to `/login`.
  - Responsive layout handling small screens and rotations cleanly.
- **Routing**:
  - Registered `/welcome` in `mobile/lib/core/router/app_router.dart` as initial route.
  - Updated login screen back button to pop or fallback gracefully to `/welcome`.
- **Quality Assurance**:
  - Created widget test suite in `mobile/test/welcome_screen_test.dart` checking all Figma elements.
  - `flutter analyze`: 0 issues found.
  - `flutter test`: 7/7 tests passing.
  - `npx tsc --noEmit`: 0 errors in backend.

## Differences from Design
- None; strictly matches `_01_welcome.dart` and `01_welcome.png`. External temporary Google storage network image URLs were replaced with scalable, offline vector drawing widgets.

## Known Issues
- None.

# Theme System
Status: DONE
Location: `/mobile/lib/core/theme/app_colors.dart`, `/mobile/lib/core/theme/app_text_styles.dart`, `/mobile/lib/core/theme/app_theme.dart`

## Done

- Created `AppColors` — Centralized color constants:
  - Brand colors (primary, primaryLight, primaryDark)
  - Background/surface colors
  - Text colors (primary, secondary, onPrimary)
  - Status colors (success, warning, error, overtime)
  - Category-specific colors matching the 7 backend seed values
  - Misc (divider, disabled)
- Created `AppTextStyles` — Centralized text styles:
  - Headings (h1, h2, h3)
  - Body (large, medium, small)
  - Labels and buttons
  - Timer display (large 48px, small 24px with tabular figures)
- Created `AppTheme` — Material 3 theme:
  - `ColorScheme.fromSeed` with primary color
  - Custom AppBar, ElevatedButton, InputDecoration, Card, Divider themes
  - 12px border radius on inputs and buttons, 16px on cards

## Notes for the next developer
- All color/style values are **placeholders** — replace with actual tokens from `/design/DESIGN_TOKENS.md` when available
- NEVER hardcode colors or font sizes in screen widgets — always reference `AppColors` and `AppTextStyles`
- If the designer provides a custom font (e.g., Inter), add it to `pubspec.yaml` assets and update `AppTextStyles`
- Dark theme is not implemented yet — add `AppTheme.dark` when needed

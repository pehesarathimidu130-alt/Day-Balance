# Mobile Setup
Status: DONE
Location: `/mobile/`

## Done

- Created Flutter project with `flutter create --org com.daybalance --project-name day_balance mobile`
- Flutter 3.29.0 (stable), Dart 3.7.0
- Android applicationId: `com.daybalance.day_balance`
- Added dependencies: flutter_riverpod, go_router, dio, flutter_secure_storage, flutter_local_notifications, timezone, intl
- analysis_options.yaml includes `package:flutter_lints/flutter.yaml` with strict rules
- Created folder structure:
  - `lib/core/theme/` — AppColors, AppTextStyles, AppTheme
  - `lib/core/constants/` — categories, api_constants
  - `lib/core/network/` — Dio client with auth interceptor
  - `lib/core/router/` — GoRouter configuration
  - `lib/features/{auth,onboarding,planning,timer,summary,settings}/{data,domain,presentation}/`
  - `lib/shared/widgets/` — PlaceholderContent widget
- Updated `lib/main.dart` — ProviderScope + MaterialApp.router with theme and GoRouter
- All feature subdirectories have `.gitkeep` files

## Notes for the next developer
- The user received a warning about Developer Mode for symlinks — this doesn't block functionality, only plugin builds
- The applicationId uses `com.daybalance` org — user may want to change to their own name
- Theme tokens are placeholders — replace with actual Figma design tokens from `/design/DESIGN_TOKENS.md`
- GoRouter starts at `/login` — add redirect logic when auth state management is implemented

# Login Screen
Status: DONE
Location: `/mobile/lib/features/auth/presentation/login_screen.dart`

## Done
- Created `LoginScreen` (`ConsumerStatefulWidget`):
  - Form validation for email format and min-length password
  - Password visibility toggle
  - Error banner showing clear backend/network errors
  - Loading spinner indicator on primary action button
  - Calls `authControllerProvider.notifier.login(email, password)`
  - Saves JWT tokens via `AuthInterceptor.saveTokens()`
  - Routes to `/home` if `onboardingDone == true`, or `/onboarding/schedule` if onboarding is pending
  - Quick navigation link to `/register`
- Connected with `AuthRepository`, `dioProvider`, and Riverpod `AuthController`
- Implemented real token refresh in `dio_client.dart` using `POST /api/auth/refresh`
- Wired route into `appRouter`
- Verified via `flutter test` smoke test

## Notes for the next developer
- Uses `AppColors` and `AppTextStyles` tokens
- Form keys and controllers are safely disposed

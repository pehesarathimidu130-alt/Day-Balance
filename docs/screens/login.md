# Login Screen
Status: DRAFT
Location: `/mobile/lib/features/auth/presentation/login_screen.dart`

> **NOTE**: TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs.

## Draft Implementation
- Form validation for email format and min-length password
- Password visibility toggle
- Error banner showing clear backend/network errors
- Loading indicator on primary button
- Calls `authControllerProvider.notifier.login(email, password)`
- Saves JWT tokens via `AuthInterceptor.saveTokens()`
- Routes to `/home` or `/onboarding/schedule`
- Navigation link to `/register`

## Notes for the next developer
- Rebuild UI strictly according to Figma design (`/figma/03_login.png`) when instructed.

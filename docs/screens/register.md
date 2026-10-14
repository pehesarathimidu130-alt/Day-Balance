# Register Screen
Status: DRAFT
Location: `/mobile/lib/features/auth/presentation/register_screen.dart`

> **NOTE**: TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs.

## Draft Implementation
- Form validation: optional display name, required email format, password min 8 characters, password confirmation match check
- Password visibility toggles for both password and confirm password inputs
- Error banner displaying backend error messages
- Loading spinner indicator on primary action button
- Calls `authControllerProvider.notifier.register(...)`
- Saves JWT tokens via `AuthInterceptor.saveTokens()`
- Routes to `/onboarding/schedule` on successful registration
- Navigation back to `/login` via top back button and bottom text link

## Notes for the next developer
- Rebuild UI strictly according to Figma design when instructed.

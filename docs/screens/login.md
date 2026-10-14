# Login Screen
Status: DONE
Location: `/mobile/lib/features/auth/presentation/login_screen.dart`

## Done

- **Design System & Tokens**:
  - Extracted colors, typography, spacing, and radius tokens from Figma `03_login.png` and `Day-Balance_style_guide.png` into `mobile/lib/core/theme/` (`app_colors.dart`, `app_text_styles.dart`, `app_theme.dart`).
  - Configured Roboto font family across styles with compile-time `const` compatibility.
- **Reusable Components**:
  - `AppPrimaryButton` (`mobile/lib/shared/widgets/primary_button.dart`): 48dp height, pill radius 100, `#49664D` background, loading spinner.
  - `AppSecondaryButton` (`mobile/lib/shared/widgets/secondary_button.dart`): 48dp height, pill radius 100, outlined border `#85897D`, `#49664D` text.
  - `AppTextField` (`mobile/lib/shared/widgets/app_text_field.dart`): 56dp height, 4dp radius, floating label cut into border, error styling.
  - `AppPasswordField` (`mobile/lib/shared/widgets/app_password_field.dart`): Password toggle with accessible 48dp touch target.
- **Component Documentation**:
  - `docs/components/primary_button.md`
  - `docs/components/secondary_button.md`
  - `docs/components/app_text_field.md`
  - `docs/components/app_password_field.md`
- **Login Screen UI**:
  - Replaced invented UI with layout strictly matching `03_login.png`.
  - Top back arrow with >=48dp touch target.
  - Title "Good to see you." (Heading 32/38 Roboto Medium #292E28).
  - Subtitle "Log in and pick up\nwhere you left off." (Body 16/22 Roboto Regular #62675D).
  - Email field with validation (empty check, email regex).
  - Password field with min 8 characters validation and show/hide toggle.
  - Exact Figma error text displayed below password field upon credential mismatch: `"That password doesn’t match this email. Try again or reset it below."`
  - Right-aligned "Forgot password?" link (Roboto Semibold 14, #49664D).
  - "Log in" primary pill button with disabled state and loading indicator during submission.
  - Bottom "New to Day-Balance?" and "Create an account" secondary button navigating to `/register`.
  - Responsive scrollable layout handling keyboard appearance gracefully without overflow.
  - Navigation routing after login: routes to `/home` (Today) if `onboardingDone == true`, or `/onboarding/schedule` if `false`.
- **Backend & Network**:
  - Stored access and refresh tokens using `flutter_secure_storage`.
  - Hardened Dio 401 refresh flow using independent Dio instance to avoid recursive interceptor loops.
  - Verified live backend auth endpoints (`/api/auth/register`, `/api/auth/login`, `/api/auth/refresh`) against live Neon PostgreSQL.
- **Quality Assurance**:
  - `flutter analyze`: 0 issues found.
  - `flutter test`: 6 tests passing (including full validation test suite in `mobile/test/login_screen_test.dart`).

## API Endpoints Used
- `POST /api/auth/login`: `{ email, password }` -> returns `{ user, tokens }`
- `POST /api/auth/refresh`: `{ refreshToken }` -> returns `{ tokens }`

## Differences from Design
- None; matches `03_login.png` and `Day-Balance_style_guide.png` specifications.

## Known Issues
- None.

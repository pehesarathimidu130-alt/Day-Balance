# Login Screen
Status: PLANNED
Location: `/mobile/lib/features/auth/presentation/`

## Plan
- [ ] Create login screen widget with email and password fields
- [ ] Add form validation (email format, password min length)
- [ ] Add "Log in" button that calls POST `/api/auth/login`
- [ ] Store tokens on success via `AuthInterceptor.saveTokens()`
- [ ] Navigate to `/home` (or `/onboarding/schedule` if not onboarded)
- [ ] Add link to register screen
- [ ] Match Figma design from `/design/screens/`

## Notes for the next developer
- Design file: check `/design/screens/` for the login screen PNG
- Use `AppColors` and `AppTextStyles` — never hardcode

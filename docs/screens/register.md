# Register Screen
Status: DONE
Location: `/mobile/lib/features/auth/presentation/register_screen.dart`

## Done
- [x] Rebuilt layout cleanly from Figma `_02_register.dart` and `02_register.png`
- [x] Top bar with 48dp back arrow button (`AppBackButton`) navigating back
- [x] Left-aligned title "Start with you." (32sp medium) and subtitle "Create your Day-Balance account." (14sp)
- [x] Required Name field (label "Name", hint "Maya Chen", validation "Enter your name", max 60 chars)
- [x] Required Email field (label "Email", hint "maya.chen@university.edu", email regex)
- [x] Password field (min 8 chars, error "Use at least 8 characters.") with show/hide toggle
- [x] Confirm password field (error "Passwords don’t match. Try again.") with show/hide toggle
- [x] Terms checkbox "I agree to the Terms of use and Privacy policy."
- [x] Flat pill "Create account" button with loading state
- [x] Human error messages (email already used, no connection banner)
- [x] "Already have an account? Log in" navigation to `/login`
- [x] On success, navigate to `/onboarding/schedule`
- [x] Widget tests in `mobile/test/register_screen_test.dart` passing

# Settings Screen
Status: PLANNED
Location: `/mobile/lib/features/settings/presentation/`

## Plan
- [ ] Show user profile (display name, email)
- [ ] Allow editing wake time, bedtime, routine minutes
- [ ] Log out button (clears tokens, navigates to `/login`)
- [ ] Delete account button (with confirmation, calls DELETE `/api/auth/account`)
- [ ] Match Figma design

## Notes for the next developer
- Log out: call `AuthInterceptor.clearTokens()` then navigate to `/login`
- Delete account: requires API call + clear tokens + navigate to `/login`

# Users Module
Status: PLANNED
Location: `/backend/src/modules/users/`

## Plan
- [ ] Create `users.router.ts` with routes:
  - GET `/api/users/me` — get current user profile
  - PATCH `/api/users/me` — update profile (displayName, wakeTime, bedtime, routineMinutes, onboardingDone)
- [ ] Create `users.controller.ts` with handler functions
- [ ] Create `users.service.ts` with business logic
- [ ] Create `users.validation.ts` with zod schemas
- [ ] All routes require `authenticate` middleware
- [ ] Always filter by authenticated user's id (no access to other users' data)
- [ ] Wire up the users router in `app.ts`

## Notes for the next developer
- Onboarding fields: wakeTime (time), bedtime (time), routineMinutes (int)
- Waking hours calculation: (bedtime - wakeTime) - routineMinutes → done on the client
- Set `onboardingDone: true` when onboarding flow is complete
- Never expose password_hash in responses

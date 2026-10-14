# Users Module
Status: DONE
Location: `/backend/src/modules/users/`

## Done
- Created `users.validation.ts` with `updateProfileSchema`:
  - `displayName`: optional string (1-100 characters)
  - `wakeTime`: optional string format HH:MM(:SS)
  - `bedtime`: optional string format HH:MM(:SS)
  - `routineMinutes`: optional integer (0 - 1440 minutes)
  - `onboardingDone`: optional boolean
- Created `users.service.ts`:
  - `getProfile`: queries user profile by authenticated `userId`, safely excluding `passwordHash`
  - `updateProfile`: applies partial update and returns fresh user record
- Created `users.controller.ts`:
  - `getProfile`: handles `GET /api/users/me`
  - `updateProfile`: validates body via Zod and handles `PATCH /api/users/me`
- Created `users.router.ts`:
  - Mounted `authenticate` middleware for all routes
  - Bound `GET /me` and `PATCH /me`
- Mounted `/api/users` in `app.ts`

## Notes for the next developer
- Onboarding fields: wakeTime (time), bedtime (time), routineMinutes (int)
- Waking hours calculation: (bedtime - wakeTime) - routineMinutes → done on the client
- Set `onboardingDone: true` when onboarding flow is complete
- Never expose password_hash in responses (handled in `select` clauses)

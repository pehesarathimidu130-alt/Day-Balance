# Auth Module
Status: PLANNED
Location: `/backend/src/modules/auth/`

## Plan
- [ ] Create `auth.router.ts` with routes:
  - POST `/api/auth/register` — email, password, displayName → create user, return tokens
  - POST `/api/auth/login` — email, password → verify, return tokens
  - POST `/api/auth/refresh` — refresh token → rotate tokens, return new pair
  - POST `/api/auth/logout` — revoke refresh token
  - DELETE `/api/auth/account` — delete user and all data
- [ ] Create `auth.controller.ts` with handler functions
- [ ] Create `auth.service.ts` with business logic:
  - Hash passwords with argon2
  - Generate JWT access token (15 min expiry) and refresh token (30 day expiry)
  - Store refresh token hash in DB (never store raw)
  - Rotate refresh tokens on use (revoke old, issue new)
- [ ] Create `auth.validation.ts` with zod schemas for request bodies
- [ ] Apply express-rate-limit (strict) on login and register routes
- [ ] Implement the `authenticate` middleware in `/backend/src/middleware/authenticate.ts`
- [ ] Wire up the auth router in `app.ts`

## Notes for the next developer
- Passwords: use argon2 (already installed). Never log passwords or tokens.
- Access token: 15 min, signed with JWT_ACCESS_SECRET
- Refresh token: stored hashed in `refresh_tokens` table, rotated on every use
- Email should be stored lowercase (normalize on register and login)
- The Flutter app stores tokens in flutter_secure_storage via `AuthInterceptor.saveTokens()`

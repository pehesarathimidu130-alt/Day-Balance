# Auth Module
Status: DRAFT
Location: `/backend/src/modules/auth/`

## Done
- Created `auth.validation.ts` with zod schemas:
  - `registerSchema`: email format + lowercase, min 8 char password, optional displayName
  - `loginSchema`: email + password
  - `refreshSchema`: refreshToken
  - `logoutSchema`: refreshToken
- Created `auth.service.ts`:
  - Password hashing with argon2
  - JWT token generation: 15-minute access token (`JWT_ACCESS_SECRET`), 30-day refresh token (`JWT_REFRESH_SECRET`)
  - Storing SHA-256 hashed refresh tokens in `refresh_tokens` table
  - Refresh token rotation on use (revokes old token, issues new pair)
  - Logout revokes refresh token
  - Delete account cascades and removes user and related data
- Created `auth.controller.ts`:
  - `register`: validates payload, creates user, returns 201 with user profile and token pair
  - `login`: validates credentials, returns 200 with user profile and token pair
  - `refresh`: validates refresh token, returns 200 with new token pair
  - `logout`: revokes token, returns 200
  - `deleteAccount`: verifies `req.userId`, deletes user, returns 200
- Created `auth.router.ts`:
  - Rate limiting with `express-rate-limit` (15 requests per 15 minutes window) for login & register
  - Protected `DELETE /account` route with `authenticate` middleware
- Implemented `authenticate.ts` middleware:
  - Extracts Bearer token from `Authorization` header
  - Verifies token signature with `JWT_ACCESS_SECRET`
  - Attaches `req.userId` for downstream routes or responds with 401
- Extended Express Request type definitions in `src/types/express.d.ts` for `userId`
- Mounted `/api/auth` router and `errorHandler` middleware in `app.ts`

## Notes for the next developer
- Passwords: use argon2. Never log passwords or tokens.
- Access token: 15 min, signed with JWT_ACCESS_SECRET
- Refresh token: stored hashed in `refresh_tokens` table, rotated on every use
- Email is automatically lowercased and trimmed during zod validation
- The Flutter app stores tokens in flutter_secure_storage via `AuthInterceptor.saveTokens()`

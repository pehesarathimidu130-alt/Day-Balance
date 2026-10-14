# Environment Config
Status: DONE
Location: `/backend/.env.example`, `/backend/src/config/env.ts`

## Done

- Created `.env.example` with all required environment variables:
  - `DATABASE_URL` (Neon PostgreSQL pooled connection string)
  - `DATABASE_URL_UNPOOLED` (Neon PostgreSQL unpooled connection for migrations)
  - `NEON_BRANCH` (active branch, e.g. production)
  - `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_ENDPOINT_URL_S3`, `AWS_REGION` (Neon Object Storage S3-compatible credentials)
  - `JWT_ACCESS_SECRET`, `JWT_REFRESH_SECRET`
  - `PORT`, `NODE_ENV`, `CORS_ORIGIN`
  - `TEST_USER_PASSWORD` (min 8 chars, used by `npm run create-test-user`)
- Created `src/config/env.ts` — Zod schema validation validating all variables with defaults where appropriate
- Populated `backend/.env` with live Neon credentials and verified end-to-end against live database and bucket

## Notes for the next developer
- The `.env` file is gitignored — every developer must copy `.env.example` to `.env` and fill in their own values (or run `neon env pull`)
- The env validation runs at import time — if a required variable is missing, the process exits immediately with a clear error
- CORS_ORIGIN supports comma-separated origins for production, or `*` for development

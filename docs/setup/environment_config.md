# Environment Config
Status: DONE
Location: `/backend/.env.example`, `/backend/src/config/env.ts`

## Done

- Created `.env.example` with all required environment variables (DATABASE_URL, JWT secrets, PORT, NODE_ENV, CORS_ORIGIN)
- Created `src/config/env.ts` — Zod schema validation that fails fast on startup if required variables are missing
- Validated variables: DATABASE_URL (required), JWT_ACCESS_SECRET (required), JWT_REFRESH_SECRET (required), PORT (default 3000), NODE_ENV (default development), CORS_ORIGIN (default *)

## Notes for the next developer
- The `.env` file is gitignored — every developer must copy `.env.example` to `.env` and fill in their own values
- The env validation runs at import time — if a required variable is missing, the process exits immediately with a clear error
- CORS_ORIGIN supports comma-separated origins for production, or `*` for development

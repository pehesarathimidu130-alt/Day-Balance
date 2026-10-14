# Backend Setup
Status: DONE
Location: `/backend/`

## Done

- Initialized Node.js project with `npm init`
- Installed production dependencies: express, pg, @neondatabase/serverless, @aws-sdk/client-s3, @aws-sdk/s3-request-presigner, dotenv, helmet, cors, express-rate-limit, jsonwebtoken, argon2, zod, drizzle-orm
- Installed dev dependencies: typescript, ts-node, tsx, @types/express, @types/node, @types/cors, @types/jsonwebtoken, @types/pg, drizzle-kit, nodemon
- Configured Neon project (`org-solitary-sun-34799237`, project `bitter-sea-01365386`, branch `production`) with `postgres` and `object-storage` (`assets` bucket)
- Created `src/storage/storage.client.ts` configured with `forcePathStyle: true` for Neon Object Storage
- Verified Neon PostgreSQL and Object Storage live via `npm run test:neon`
- Verified live server and `/health` route returning status `ok` with connected services
- Verified clean build (`npm run build`)
- Created `tsconfig.json` with strict TypeScript targeting ES2022
- Created folder structure: `src/config/`, `src/db/`, `src/middleware/`, `src/modules/{auth,users,categories,plans,timer,health}/`, `src/storage/`, `src/utils/`
- Created `src/app.ts` — Express app with helmet, cors, JSON parsing, health route
- Created `src/server.ts` — Entry point that starts the server
- Created `src/modules/health/health.router.ts` — GET /health returning status, timestamp, uptime, and database + storage service health
- Created `src/middleware/authenticate.ts` — JWT auth middleware
- Created `src/middleware/error-handler.ts` — Global error handler
- Created `drizzle.config.ts` for drizzle-kit supporting unpooled connection for migrations
- Added npm scripts: `dev`, `build`, `start`, `db:generate`, `db:migrate`, `db:push`, `db:studio`, `db:seed`, `test:neon`, `lint`

## Notes for the next developer
- `npm run test:neon` executes live integration checks on both Neon PostgreSQL and Object Storage
- Connection uses `@neondatabase/serverless` (HTTP driver) with pooled `DATABASE_URL` for app requests, and unpooled `DATABASE_URL_UNPOOLED` for migrations
- Neon Object Storage requires `forcePathStyle: true` on `S3Client`

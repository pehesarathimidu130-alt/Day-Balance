# Backend Setup
Status: DRAFT
Location: `/backend/`

## Done

- Initialized Node.js project with `npm init`
- Installed production dependencies: express, pg, @neondatabase/serverless, dotenv, helmet, cors, express-rate-limit, jsonwebtoken, argon2, zod, drizzle-orm
- Installed dev dependencies: typescript, ts-node, tsx, @types/express, @types/node, @types/cors, @types/jsonwebtoken, @types/pg, drizzle-kit, nodemon
- Created `tsconfig.json` with strict TypeScript targeting ES2022
- Created folder structure: `src/config/`, `src/db/`, `src/middleware/`, `src/modules/{auth,users,categories,plans,timer,health}/`, `src/utils/`
- Created `src/app.ts` — Express app with helmet, cors, JSON parsing, health route
- Created `src/server.ts` — Entry point that starts the server
- Created `src/modules/health/health.router.ts` — GET /health returning status, timestamp, uptime
- Created `src/middleware/authenticate.ts` — Placeholder JWT auth middleware
- Created `src/middleware/error-handler.ts` — Global error handler
- Created placeholder `index.ts` in each module directory
- Created `drizzle.config.ts` for drizzle-kit
- Added npm scripts: `dev`, `build`, `start`, `db:generate`, `db:migrate`, `db:push`, `db:studio`, `db:seed`, `lint`
- `npm run dev` starts the dev server using tsx watch

## Notes for the next developer
- The `dev` script uses `tsx watch` for fast TypeScript execution without compilation
- Module routers are commented out in `app.ts` — uncomment as you build each module
- The authenticate middleware is a placeholder — implement JWT verification when building the auth module
- Express 5 is installed (not 4)

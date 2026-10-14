# Day-Balance

A daily time-budgeting app for students and heavy workers. Plan your day by assigning hours to broad categories, then run countdown timers to stay on track.

## Architecture

```
day-balance/
├── mobile/          Flutter app (Android-first, iOS later)
├── backend/         Node.js + Express + TypeScript REST API
├── docs/            Handoff documentation for AI continuity
├── design/          Figma screen exports + design tokens
└── AGENTS.md        AI continuation protocol
```

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Mobile | Flutter 3.47+, Dart 3.13+, Material 3 |
| State | flutter_riverpod |
| Navigation | go_router |
| HTTP | dio (with JWT interceptor) |
| Token Storage | flutter_secure_storage |
| Notifications | flutter_local_notifications + timezone |
| Backend | Node.js, Express 5, TypeScript (strict) |
| Database | PostgreSQL on Neon |
| ORM | Drizzle ORM + drizzle-kit |
| Validation | zod |
| Auth | JWT (access + refresh tokens), argon2 hashing |
| Security | helmet, cors, express-rate-limit |

## Getting Started

### Prerequisites
- Flutter SDK 3.47+ (stable)
- Node.js 18+
- A [Neon](https://neon.tech) PostgreSQL database
- Android Studio / emulator (or physical device)

### Backend Setup

```bash
cd backend
cp .env.example .env
# Edit .env: set DATABASE_URL, JWT_ACCESS_SECRET, JWT_REFRESH_SECRET
npm install
npm run db:generate   # generate SQL migration files
npm run db:migrate    # apply migrations to your Neon database
npm run db:seed       # seed the 7 categories
npm run dev           # start dev server on port 3000
```

### Mobile Setup

```bash
cd mobile
flutter pub get
flutter analyze       # verify no lint errors
flutter run           # run on emulator or device
```

> **Android Emulator**: The app is pre-configured to reach the backend at `http://10.0.2.2:3000` (the Android emulator's alias for the host machine's localhost).
>
> **Physical Device**: Change the `baseUrl` in `mobile/lib/core/constants/api_constants.dart` to your machine's LAN IP.

### Environment Variables

Copy `backend/.env.example` to `backend/.env` and fill in:

| Variable | Description |
|----------|-------------|
| `DATABASE_URL` | Neon PostgreSQL connection string |
| `JWT_ACCESS_SECRET` | Random secret for signing access tokens |
| `JWT_REFRESH_SECRET` | Random secret for signing refresh tokens |
| `PORT` | Server port (default: 3000) |
| `NODE_ENV` | `development` or `production` |
| `CORS_ORIGIN` | Allowed origins (default: `*`) |

## Project Structure

### Mobile (`/mobile/lib/`)
```
core/
  constants/     API URLs, category definitions
  network/       Dio client with auth interceptor
  router/        GoRouter configuration
  theme/         Colors, text styles, Material theme
features/
  auth/          Login, register, logout
  onboarding/    Schedule, routine, category selection
  planning/      Daily plan creation
  timer/         Countdown timers per category
  summary/       End-of-day planned vs actual
  settings/      User preferences
shared/
  widgets/       Reusable UI components
```

### Backend (`/backend/src/`)
```
config/          Environment validation (zod)
db/              Drizzle schema, connection, seed
middleware/      Auth (JWT), error handler
modules/
  auth/          Register, login, refresh, logout
  users/         Profile, onboarding fields
  categories/    List categories, user selection
  plans/         Daily plans, plan items
  timer/         Start/pause/resume timers
  health/        GET /health
utils/           Shared helpers
```

## Documentation

See `/docs/PROGRESS.md` for the full index of feature documentation and implementation status. Each feature has its own markdown file following the handoff template.

## License

See [LICENSE](LICENSE).

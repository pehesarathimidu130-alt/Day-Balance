# Day-Balance

A daily time-budgeting mobile app (Flutter + Node.js + PostgreSQL).

**Read `/docs/PROGRESS.md` first.** Report which items are IN PROGRESS and wait for the user to confirm before continuing. Never start PLANNED or PAUSED items unless the user's current message asks for them. Build ONLY what the user's current message requests; if more seems needed, ask. Follow the doc template. Update docs as you work.

## Status Definitions
- **PLANNED**: Not started.
- **DRAFT**: Code written and compiles, but NOT run or tested end-to-end.
- **DONE**: Verified by actually running it (e.g. a real API call or emulator test).
- **PAUSED**: Deliberately stopped, waiting on something (design, decision).

## Stack
- **Mobile** (`/mobile`): Flutter 3.29.0, Dart 3.7.0, Material 3, flutter_riverpod, go_router, dio
- **Backend** (`/backend`): Node.js, Express, TypeScript (strict), Drizzle ORM, PostgreSQL on Neon, JWT auth
- **Docs** (`/docs`): Handoff documentation for AI continuity
- **Design** (`/design`): Figma exports (PNGs + design tokens)

## Quick commands
```bash
# Backend
cd backend && cp .env.example .env   # fill in your secrets
npm install && npm run dev            # start API on :3000

# Mobile
cd mobile && flutter pub get
flutter analyze                       # lint check
flutter run                           # launch on emulator/device

# Database
cd backend
npm run db:generate                   # generate migration from schema
npm run db:migrate                    # apply migration to Neon DB
npm run db:seed                       # seed the 7 categories
```

## Protocol for AI tools
Every screen, component, and backend module has a doc in `/docs/`. Before implementing anything, create/update its doc with a "Plan" checklist. After finishing, replace "Plan" with "Done" and update `PROGRESS.md`.

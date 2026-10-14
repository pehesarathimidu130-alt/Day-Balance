# Day-Balance

A daily time-budgeting mobile app (Flutter + Node.js + PostgreSQL).

**Read `/docs/PROGRESS.md` first.** Continue any IN PROGRESS item. Follow the doc template. Update docs as you work.

## Stack
- **Mobile** (`/mobile`): Flutter 3.47+, Dart, Material 3, flutter_riverpod, go_router, dio
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

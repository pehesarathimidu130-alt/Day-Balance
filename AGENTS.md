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
- **Design** (`/figma`): Figma exports (PNGs + CodeTea Flutter `.dart` exports) and tokens

## Figma Flutter Exports Rule
Before building or changing ANY screen: (1) find the .dart export for that screen in /figma and read it fully, plus the matching PNG; (2) use the .dart file as the exact source for sizes, spacing, colors, font sizes, text content, icons and widget structure; (3) rebuild the screen cleanly using our theme tokens (mobile/lib/core/theme) and shared widgets (mobile/lib/shared/widgets). Do NOT paste the exported code into lib/ unchanged, do NOT import files from /figma, and do NOT edit files in /figma; (4) replace fixed positions and fixed widths with responsive layout (Column, Row, Expanded, Padding, SafeArea, SingleChildScrollView) so the screen works on small and large phones and with the keyboard open; (5) if the .dart file and the PNG disagree, tell me; (6) if a screen has no .dart file, tell me and ask before using the PNG.

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

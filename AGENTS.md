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
- **Design** (`/design`): Figma exports (PNGs in `/design/exports/png/`, CodeTea Flutter `.dart` exports in `/design/exports/dart/`), links (`design/FIGMA_LINKS.md`), and tokens

## Figma Workflow Rule
Before building or changing ANY screen, in this order: (1) find its row in design/FIGMA_LINKS.md; (2) look at the PNG; (3) read the .dart export fully; (4) read the live Figma frame through the Figma MCP using the link in that row (read only that frame, not the whole file); (5) only then plan and build. Use the data as the exact source for sizes, spacing, colors, fonts, text, icons and structure, but rebuild the screen cleanly using our theme tokens (mobile/lib/core/theme) and shared widgets (mobile/lib/shared/widgets), and make it responsive. Never paste exported code unchanged, never import from /design, never edit /design. If the Figma MCP fails or is rate limited, continue with the PNG and .dart export, and mention it in the report. Do not stop to ask. For screens with no PNG, use the .dart export only. If something is unclear, make the most reasonable choice and list assumptions in the report. After building, run the screen and compare it with the PNG, and list any differences.

## Database Safety Rule
Never run destructive commands (DROP, TRUNCATE, or DELETE without a WHERE clause) without user approval. Test users must use `@example.com` emails and be deleted at the end of each test run. Do not stop to ask about the Neon database branch.

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

## Git Workflow Rule
- Checkout to a new feature branch (`feature/<screen-name>`) before building each screen or feature.
- When finished, stage all files and commit with a clear, descriptive commit message.
- **NEVER push to remote (`git push`) yourself.**
- Report the branch name to the user so they can push manually and tell you when to continue.

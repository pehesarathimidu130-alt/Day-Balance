# Day-Balance Documentation Progress

> This is the master index. Every doc is listed here with its status.
> Any AI tool should read this first before touching anything.

## Status Definitions
- **PLANNED**: Not started.
- **DRAFT**: Code written and compiles, but NOT run or tested end-to-end.
- **DONE**: Verified by actually running it (e.g. a real API call or emulator test).
- **PAUSED**: Deliberately stopped, waiting on something (design, decision).

---

## Setup & Infrastructure

| Doc | Status | Summary | Notes |
|-----|--------|---------|-------|
| [Backend Setup](setup/backend_setup.md) | DRAFT | Express + TS + Drizzle project, health endpoint, DB connection | Server code written and compiles, not yet run against live Neon DB |
| [Mobile Setup](setup/mobile_setup.md) | DONE | Flutter project, dependencies, folder structure, theme, router | Verified with `flutter analyze` and `flutter test` smoke test |
| [Database Schema](backend/database_schema.md) | DRAFT | Drizzle schema with all tables, seed script | Schema written and compiles, migrations not yet applied to live DB |
| [Environment Config](setup/environment_config.md) | DRAFT | .env.example, zod validation, required variables | Zod schema configured, real `.env` secrets not yet tested live |

## Backend Modules

| Doc | Status | Summary | Notes |
|-----|--------|---------|-------|
| [Auth Module](backend/auth.md) | DRAFT | Register, login, logout, refresh, delete account | Endpoints written and compile, not tested end-to-end against live DB |
| [Users Module](backend/users.md) | DRAFT | Profile, onboarding fields | Endpoints written and compile, not tested end-to-end |
| [Categories Module](backend/categories.md) | DRAFT | List categories, user selection | Endpoints written and compile, not tested end-to-end |
| [Plans Module](backend/plans.md) | DRAFT | Daily plans, plan items CRUD | Endpoints written and compile, not tested end-to-end |
| [Timer Module](backend/timer.md) | DRAFT | Start/pause/resume, time entries, timer math | Endpoints written and compile, not tested end-to-end |

## Mobile Screens

| Doc | Status | Summary | Notes |
|-----|--------|---------|-------|
| [Login Screen](screens/login.md) | DRAFT | Email + password login | TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs |
| [Register Screen](screens/register.md) | DRAFT | Email + password registration | TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs |
| [Onboarding Schedule](screens/onboarding_schedule.md) | DRAFT | Wake time, bedtime picker | TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs |
| [Onboarding Routine](screens/onboarding_routine.md) | DRAFT | Routine minutes, waking hours calc | TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs |
| [Onboarding Categories](screens/onboarding_categories.md) | DRAFT | Select categories from the 7 | TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs |
| [Today Screen](screens/today.md) | PAUSED | Main screen with timers, planned/remaining | Blocked on Figma design; do not continue |
| [Plan Screen](screens/plan.md) | DRAFT | Daily planning with hour steppers | TEMPORARY UI invented by the AI, to be rebuilt from my Figma designs |
| [Summary Screen](screens/summary.md) | PLANNED | End-of-day planned vs actual | Not started |
| [Settings Screen](screens/settings.md) | PLANNED | User preferences, logout, delete account | Not started |

## Mobile Components

| Doc | Status | Summary | Notes |
|-----|--------|---------|-------|
| [Dio Client](components/dio_client.md) | DRAFT | HTTP client with JWT interceptor | Token refresh flow written, not tested live against running API |
| [App Router](components/app_router.md) | DRAFT | GoRouter with routes | Compiles and passes smoke test, routes point to temporary/placeholder screens |
| [Theme System](components/theme_system.md) | DRAFT | AppColors, AppTextStyles, AppTheme | Tokens defined, to be aligned with Figma design tokens |
| [Category Constants](components/category_constants.md) | DONE | 7 fixed categories with colors and icons | Matches project specification categories |
| [Notification Service](components/notification_service.md) | DRAFT | Local notification helper for timer overtime | Not wired into the app yet |

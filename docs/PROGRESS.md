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
| [Backend Setup](setup/backend_setup.md) | DONE | Express + TS + Drizzle project, health endpoint, DB connection | Verified live: Express server running, Neon DB & Object Storage connected |
| [Mobile Setup](setup/mobile_setup.md) | DONE | Flutter project, dependencies, folder structure, theme, router | Verified with `flutter analyze` and `flutter test` smoke test |
| [Database Schema](backend/database_schema.md) | DONE | Drizzle schema with all tables, seed script | Verified live: schema pushed to Neon PostgreSQL and 7 categories seeded |
| [Environment Config](setup/environment_config.md) | DONE | .env.example, zod validation, required variables | Verified live: Neon DB and S3 Object Storage environment variables loaded and tested |

## Backend Modules

| Doc | Status | Summary | Notes |
|-----|--------|---------|-------|
| [Auth Module](backend/auth.md) | DONE | Register, login, logout, refresh, delete account | Verified live with real backend HTTP requests and Neon DB |
| [Users Module](backend/users.md) | DRAFT | Profile, onboarding fields | Endpoints written and compile, not tested end-to-end |
| [Categories Module](backend/categories.md) | DRAFT | List categories, user selection | Endpoints written and compile, not tested end-to-end |
| [Plans Module](backend/plans.md) | DRAFT | Daily plans, plan items CRUD | Endpoints written and compile, not tested end-to-end |
| [Timer Module](backend/timer.md) | DRAFT | Start/pause/resume, time entries, timer math | Endpoints written and compile, not tested end-to-end |

## Mobile Screens

| Doc | Status | Summary | Notes |
|-----|--------|---------|-------|
| [Login Screen](screens/login.md) | DONE | Email + password login strictly matching Figma 03_login.png | Verified with widget tests and live backend auth flow |
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
| [Dio Client](components/dio_client.md) | DONE | HTTP client with JWT interceptor | Token refresh flow verified with real backend requests |
| [App Router](components/app_router.md) | DRAFT | GoRouter with routes | Compiles and passes smoke test, routes point to temporary/placeholder screens |
| [Theme System](components/theme_system.md) | DONE | AppColors, AppTextStyles, AppTheme | Extracted from Figma Style Guide |
| [Primary Button](components/primary_button.md) | DONE | 48dp pill primary CTA button | Built to Figma specs with loading state |
| [Secondary Button](components/secondary_button.md) | DONE | 48dp pill outlined CTA button | Built to Figma specs |
| [App Text Field](components/app_text_field.md) | DONE | Outlined text field with floating label | 4dp radius, 56dp height, error styling |
| [App Password Field](components/app_password_field.md) | DONE | Password field with show/hide toggle | Accessible 48dp toggle target, error styling |
| [Category Constants](components/category_constants.md) | DONE | 7 fixed categories with colors and icons | Matches project specification categories |
| [Notification Service](components/notification_service.md) | DRAFT | Local notification helper for timer overtime | Not wired into the app yet |

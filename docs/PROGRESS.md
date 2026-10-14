# Day-Balance Documentation Progress

> This is the master index. Every doc is listed here with its status.
> Any AI tool should read this first, then continue the next IN PROGRESS or PLANNED item.

## Setup & Infrastructure

| Doc | Status | Summary |
|-----|--------|---------|
| [Backend Setup](setup/backend_setup.md) | DONE | Express + TS + Drizzle project, health endpoint, DB connection |
| [Mobile Setup](setup/mobile_setup.md) | DONE | Flutter project, dependencies, folder structure, theme, router |
| [Database Schema](backend/database_schema.md) | DONE | Drizzle schema with all tables, seed script |
| [Environment Config](setup/environment_config.md) | DONE | .env.example, zod validation, required variables |

## Backend Modules

| Doc | Status | Summary |
|-----|--------|---------|
| [Auth Module](backend/auth.md) | DONE | Register, login, logout, refresh, delete account |
| [Users Module](backend/users.md) | DONE | Profile, onboarding fields |
| [Categories Module](backend/categories.md) | DONE | List categories, user selection |
| [Plans Module](backend/plans.md) | DONE | Daily plans, plan items CRUD |
| [Timer Module](backend/timer.md) | DONE | Start/pause/resume, time entries, timer math |

## Mobile Screens

| Doc | Status | Summary |
|-----|--------|---------|
| [Login Screen](screens/login.md) | DONE | Email + password login |
| [Register Screen](screens/register.md) | DONE | Email + password registration |
| [Onboarding Schedule](screens/onboarding_schedule.md) | DONE | Wake time, bedtime picker |
| [Onboarding Routine](screens/onboarding_routine.md) | DONE | Routine minutes, waking hours calc |
| [Onboarding Categories](screens/onboarding_categories.md) | DONE | Select categories from the 7 |
| [Today Screen](screens/today.md) | IN PROGRESS | Main screen with timers, planned/remaining |
| [Plan Screen](screens/plan.md) | DONE | Daily planning with hour steppers |
| [Summary Screen](screens/summary.md) | PLANNED | End-of-day planned vs actual |
| [Settings Screen](screens/settings.md) | PLANNED | User preferences, logout, delete account |

## Mobile Components

| Doc | Status | Summary |
|-----|--------|---------|
| [Dio Client](components/dio_client.md) | DONE | HTTP client with JWT interceptor |
| [App Router](components/app_router.md) | DONE | GoRouter with all placeholder routes |
| [Theme System](components/theme_system.md) | DONE | AppColors, AppTextStyles, AppTheme |
| [Category Constants](components/category_constants.md) | DONE | 7 fixed categories with colors and icons |

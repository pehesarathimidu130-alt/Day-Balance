# App Router
Status: DONE
Location: `/mobile/lib/core/router/app_router.dart`

## Done

- Created `appRouter` GoRouter instance with `initialLocation: '/login'`
- Registered placeholder routes:
  - `/login` — Login screen
  - `/register` — Register screen
  - `/onboarding/schedule` — Wake/bed time picker
  - `/onboarding/routine` — Routine minutes
  - `/onboarding/categories` — Category selection
  - `/home` — Today screen (main app)
  - `/plan` — Daily planning
  - `/summary` — End-of-day summary
  - `/settings` — Settings
- All routes use a shared `_PlaceholderScreen` widget that shows the screen title

## Notes for the next developer
- Replace `_PlaceholderScreen` with actual screen widgets as they are built
- Add redirect logic based on auth state (if no token → login, if not onboarded → onboarding)
- Consider adding `ShellRoute` for the main app navigation (home, settings) with a bottom nav bar
- Named routes are available via `context.goNamed('route-name')`

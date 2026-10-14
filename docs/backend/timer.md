# Timer Module
Status: DONE
Location: `/backend/src/modules/timer/`

## Done
- Created `timer.validation.ts`:
  - `startTimerSchema`: validates `planItemId` UUID
  - `timerStatusQuerySchema`: validates optional `date` string (YYYY-MM-DD)
- Created `timer.service.ts`:
  - `pauseTimer`: finds any active timer for user (`started_at IS NOT NULL`), computes elapsed seconds since started_at, decrements `remaining_seconds` (retaining negative values for overtime), sets `started_at = null`, and updates open `time_entries` record with `ended_at = now()`
  - `startTimer`: verifies user owns the plan item, pauses any other active timer first (enforcing the database constraint), sets `started_at = now()`, creates a new `time_entries` row, and returns active item with server timestamp
  - `getStatus`: retrieves today's plan, all plan items with category metadata, identifies currently active item, and returns current server timestamp for drift calculation
- Created `timer.controller.ts`:
  - `start`: handles `POST /api/timer/start`
  - `pause`: handles `POST /api/timer/pause`
  - `getStatus`: handles `GET /api/timer/status`
- Created `timer.router.ts`:
  - All routes protected by `authenticate` middleware
- Mounted `/api/timer` in `app.ts`

## Timer Rule (CRITICAL — followed strictly)
Never decrement a counter every second.

### Data model
- `plan_items.remaining_seconds` — the last-known remaining time (updated on pause)
- `plan_items.started_at` — timestamp when the timer was started (NULL when paused)

### Displaying remaining time (client-side)
```
if started_at IS NOT NULL:
    displayed_remaining = remaining_seconds - (now - started_at)
else:
    displayed_remaining = remaining_seconds
```
The Flutter app refreshes this computed value every second for the UI. The server never does per-second updates.

### Starting a timer
1. Check running item: pause any existing running item first
2. Set `plan_items.started_at = now()` on the target item
3. Create a `time_entries` row with `started_at = now()`, `ended_at = NULL`

### Pausing a timer
1. Compute elapsed: `now() - plan_items.started_at`
2. Update `plan_items.remaining_seconds = remaining_seconds - elapsed`
3. Set `plan_items.started_at = NULL`
4. Update the open `time_entries` row: set `ended_at = now()`

### Overtime
- If `remaining_seconds` goes below 0, the category is in overtime
- Display: show the absolute value in red, counting up
- Fire a local notification when remaining hits 0

## Notes for the next developer
- The partial unique index `plan_items_one_running_timer` is enforced in the Drizzle schema
- Time entries create an audit trail of all timer sessions
- The client should call GET `/api/timer/status` on app resume to get fresh server state
- All time calculations use server timestamps, never client clock

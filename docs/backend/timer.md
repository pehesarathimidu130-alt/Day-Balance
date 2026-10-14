# Timer Module
Status: PLANNED
Location: `/backend/src/modules/timer/`

## Plan
- [ ] Create `timer.router.ts` with routes:
  - POST `/api/timer/start` — start timer for a category (body: { planItemId })
  - POST `/api/timer/pause` — pause the currently running timer
  - GET `/api/timer/status` — get current timer state for today
- [ ] Create `timer.controller.ts` with handler functions
- [ ] Create `timer.service.ts` with business logic (see Timer Rule below)
- [ ] Create `timer.validation.ts` with zod schemas
- [ ] All routes require `authenticate` middleware
- [ ] Wire up the timer router in `app.ts`

## Timer Rule (CRITICAL — do not implement differently)

**Never decrement a counter every second.** The correct approach:

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
1. Check the partial unique index: if another plan_item has `started_at IS NOT NULL` for this user, pause it first (see Pausing)
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

### Why this works
- Survives app backgrounding, app kill, phone restart
- Server only stores timestamps — no polling, no WebSocket, no cron
- Client computes the displayed value from server data
- Partial unique index guarantees at most one running timer per user at the database level

## Notes for the next developer
- The partial unique index `plan_items_one_running_timer` is already in the Drizzle schema
- Time entries create an audit trail of all timer sessions
- The client should call GET `/api/timer/status` on app resume to get fresh server state
- All time calculations use server timestamps, never client clock

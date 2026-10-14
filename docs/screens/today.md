# Today Screen
Status: PLANNED
Location: `/mobile/lib/features/timer/presentation/`

## Plan
- [ ] Show total hours left at top
- [ ] List each planned category with: planned time, remaining time, Start/Pause button
- [ ] Running timer shows countdown (computed: remaining_seconds - elapsed)
- [ ] Only one category can run at a time (starting one auto-pauses the other)
- [ ] Overtime: when remaining hits 0, show count-up in red + fire local notification
- [ ] "Edit plan" button navigates to `/plan`
- [ ] Refresh timer state on app resume (call GET `/api/timer/status`)
- [ ] Match Figma design

## Notes for the next developer
- Timer display is client-side computed, refreshed every second via a periodic timer
- See `/docs/backend/timer.md` for the complete timer rule
- This is the main screen of the app

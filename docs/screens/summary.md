# Summary Screen
Status: PLANNED
Location: `/mobile/lib/features/summary/presentation/`

## Plan
- [ ] Show end-of-day summary: planned vs actual per category
- [ ] Display as a list or chart with each category's planned hours and actual hours used
- [ ] Show overtime categories highlighted in red
- [ ] Match Figma design

## Notes for the next developer
- Actual time = planned_seconds - remaining_seconds (for non-running items)
- For running items, compute elapsed from started_at
- Time entries provide the detailed breakdown if needed

# Plan Screen
Status: PLANNED
Location: `/mobile/lib/features/planning/presentation/`

## Plan
- [ ] Show "How would you like to plan today?"
- [ ] List user's selected categories, each with a < value > stepper (30-min steps)
- [ ] Show "Hours left to plan" counter that decreases as hours are added
- [ ] Cannot go below zero hours remaining
- [ ] Soft, non-judgmental nudge if Entertainment exceeds 30% of the day
- [ ] "Save plan" button calls POST `/api/plans`
- [ ] Navigate to `/home` on success
- [ ] Match Figma design

## Notes for the next developer
- Stepper increments/decrements by 1800 seconds (30 minutes)
- waking_seconds is sent with the plan creation request
- Hours left = waking_seconds - sum(planned_seconds for all items)

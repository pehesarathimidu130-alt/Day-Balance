# Onboarding: Routine Screen
Status: PLANNED
Location: `/mobile/lib/features/onboarding/presentation/`

## Plan
- [ ] Create screen with routine minutes input (wind-up, shower, etc.)
- [ ] Show final calculation: waking hours = (bedtime - wake) - routine minutes
- [ ] Display "You have X hours per day" message
- [ ] "Next" button saves and navigates to `/onboarding/categories`
- [ ] Match Figma design

## Notes for the next developer
- routine_minutes is a single integer value (total routine time, not broken down)
- This is step 2 of 3 in onboarding

# Onboarding: Categories Screen
Status: PLANNED
Location: `/mobile/lib/features/onboarding/presentation/`

## Plan
- [ ] Show all 7 categories with name, description, icon, color
- [ ] Allow user to select/deselect categories (multi-select)
- [ ] "Done" button calls PUT `/api/categories/mine` and sets `onboardingDone: true`
- [ ] Navigate to `/home`
- [ ] Match Figma design

## Notes for the next developer
- Use `kCategories` from constants for display
- All 7 categories are shown with explanations
- This is step 3 of 3 in onboarding

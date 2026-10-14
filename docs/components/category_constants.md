# Category Constants
Status: DONE
Location: `/mobile/lib/core/constants/categories.dart`

## Done

- Created `Category` class with fields: id, name, description, color, icon, sortOrder
- Created `kCategories` list with the 7 fixed categories, exactly matching backend seed data:
  1. Academic (school icon, blue)
  2. Life/Family (family_restroom icon, orange)
  3. Entertainment (sports_esports icon, red)
  4. Personal/Reading (menu_book icon, green)
  5. Career (work icon, purple)
  6. Unplanned/Extra capacity (schedule icon, grey)
  7. Rest/Recovery (self_improvement icon, teal)
- Colors reference `AppColors` constants for consistency

## Notes for the next developer
- Categories are fixed — users cannot create sub-categories or custom categories
- The icons are Material Design icon names; final visual look comes from Figma designs
- If the backend category data ever changes, update both `seed.ts` and this file
- Use `kCategories` for UI rendering; the backend is the source of truth for data

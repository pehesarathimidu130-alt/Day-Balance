# Categories Module
Status: DONE
Location: `/backend/src/modules/categories/`

## Done
- Created `categories.validation.ts`:
  - `updateUserCategoriesSchema`: validates non-empty array of category IDs
- Created `categories.service.ts`:
  - `getAllCategories`: returns all 7 categories sorted by `sortOrder`
  - `getUserCategories`: returns the user's selected categories by joining `user_categories` with `categories`
  - `setUserCategories`: validates category IDs against system categories, replaces `user_categories` rows for the user, and returns fresh selection
- Created `categories.controller.ts`:
  - `getAll`: handles `GET /api/categories` (public)
  - `getMine`: handles `GET /api/categories/mine` (authenticated)
  - `setMine`: handles `PUT /api/categories/mine` (authenticated)
- Created `categories.router.ts`:
  - Public route for `GET /`
  - Authenticated routes for `GET /mine` and `PUT /mine`
- Mounted `/api/categories` in `app.ts`

## Notes for the next developer
- Categories table is read-only to clients — seeded by `db:seed` script
- Users select from the 7 categories during onboarding
- The `user_categories` table stores the many-to-many relationship
- PUT (not PATCH) on `/mine` replaces the entire selection

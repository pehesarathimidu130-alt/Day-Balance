# Categories Module
Status: PLANNED
Location: `/backend/src/modules/categories/`

## Plan
- [ ] Create `categories.router.ts` with routes:
  - GET `/api/categories` — list all 7 categories (public, no auth required)
  - GET `/api/categories/mine` — list user's selected categories (auth required)
  - PUT `/api/categories/mine` — replace user's selected categories (auth required, body: { categoryIds: string[] })
- [ ] Create `categories.controller.ts` with handler functions
- [ ] Create `categories.service.ts` with business logic
- [ ] Create `categories.validation.ts` with zod schemas
- [ ] Wire up the categories router in `app.ts`

## Notes for the next developer
- Categories table is read-only to clients — seeded by `db:seed` script
- Users select from the 7 categories during onboarding
- The `user_categories` table stores the many-to-many relationship
- PUT (not PATCH) on `/mine` replaces the entire selection

import { z } from 'zod';

export const updateUserCategoriesSchema = z.object({
  categoryIds: z
    .array(z.string().min(1))
    .min(1, 'At least one category must be selected'),
});

export type UpdateUserCategoriesInput = z.infer<
  typeof updateUserCategoriesSchema
>;

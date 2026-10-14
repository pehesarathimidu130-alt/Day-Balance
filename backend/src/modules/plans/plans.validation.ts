import { z } from 'zod';

const dateRegex = /^\d{4}-\d{2}-\d{2}$/;

export const planItemSchema = z.object({
  categoryId: z.string().min(1, 'Category ID is required'),
  plannedSeconds: z
    .number()
    .int()
    .min(0, 'plannedSeconds must be non-negative'),
});

export const createPlanSchema = z
  .object({
    planDate: z
      .string()
      .regex(dateRegex, 'planDate must be in YYYY-MM-DD format'),
    wakingSeconds: z
      .number()
      .int()
      .min(0, 'wakingSeconds must be non-negative'),
    items: z
      .array(planItemSchema)
      .min(1, 'At least one plan item must be provided'),
  })
  .refine(
    (data) => {
      const totalPlanned = data.items.reduce(
        (sum, item) => sum + item.plannedSeconds,
        0,
      );
      return totalPlanned <= data.wakingSeconds;
    },
    {
      message: 'Total planned time cannot exceed waking hours',
      path: ['items'],
    },
  );

export const updatePlanSchema = z.object({
  wakingSeconds: z.number().int().min(0).optional(),
  items: z.array(planItemSchema).min(1).optional(),
});

export const planDateQuerySchema = z.object({
  date: z
    .string()
    .regex(dateRegex, 'date must be in YYYY-MM-DD format')
    .optional(),
});

export type PlanItemInput = z.infer<typeof planItemSchema>;
export type CreatePlanInput = z.infer<typeof createPlanSchema>;
export type UpdatePlanInput = z.infer<typeof updatePlanSchema>;

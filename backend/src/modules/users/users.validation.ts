import { z } from 'zod';

const timeRegex = /^([01]\d|2[0-3]):([0-5]\d)(:[0-5]\d)?$/;

export const updateProfileSchema = z
  .object({
    displayName: z.string().min(1).max(100).optional(),
    wakeTime: z
      .string()
      .regex(timeRegex, 'wakeTime must be in HH:MM or HH:MM:SS format')
      .optional(),
    bedtime: z
      .string()
      .regex(timeRegex, 'bedtime must be in HH:MM or HH:MM:SS format')
      .optional(),
    routineMinutes: z
      .number()
      .int()
      .min(0, 'routineMinutes must be >= 0')
      .max(1440, 'routineMinutes must be <= 1440')
      .optional(),
    onboardingDone: z.boolean().optional(),
  })
  .strict();

export type UpdateProfileInput = z.infer<typeof updateProfileSchema>;

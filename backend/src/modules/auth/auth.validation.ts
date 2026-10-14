import { z } from 'zod';

export const registerSchema = z.preprocess(
  (val: any) => {
    if (val && typeof val === 'object') {
      if (!val.displayName && val.name) {
        return { ...val, displayName: val.name };
      }
    }
    return val;
  },
  z.object({
    email: z
      .string()
      .email('Invalid email address')
      .transform((val) => val.toLowerCase().trim()),
    password: z
      .string()
      .min(8, 'Password must be at least 8 characters long'),
    displayName: z
      .string()
      .trim()
      .min(1, 'Enter your name')
      .max(60, 'Name cannot exceed 60 characters'),
  }),
);

export const loginSchema = z.object({
  email: z
    .string()
    .email('Invalid email address')
    .transform((val) => val.toLowerCase().trim()),
  password: z.string().min(1, 'Password is required'),
});

export const refreshSchema = z.object({
  refreshToken: z.string().min(1, 'Refresh token is required'),
});

export const logoutSchema = z.object({
  refreshToken: z.string().min(1, 'Refresh token is required'),
});

export type RegisterInput = z.infer<typeof registerSchema>;
export type LoginInput = z.infer<typeof loginSchema>;
export type RefreshInput = z.infer<typeof refreshSchema>;
export type LogoutInput = z.infer<typeof logoutSchema>;

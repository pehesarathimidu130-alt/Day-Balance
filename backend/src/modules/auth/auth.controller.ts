import { Request, Response, NextFunction } from 'express';
import { ZodError } from 'zod';
import { AuthService } from './auth.service';
import {
  registerSchema,
  loginSchema,
  refreshSchema,
  logoutSchema,
} from './auth.validation';

export class AuthController {
  static async register(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const validated = registerSchema.parse(req.body);
      const result = await AuthService.register(
        validated.email,
        validated.password,
        validated.displayName,
      );

      res.status(201).json({
        message: 'User registered successfully',
        data: result,
      });
    } catch (err: any) {
      if (err instanceof ZodError) {
        res.status(400).json({
          error: 'Validation failed',
          details: err.flatten().fieldErrors,
        });
        return;
      }
      if (err.statusCode) {
        res.status(err.statusCode).json({ error: err.message });
        return;
      }
      next(err);
    }
  }

  static async login(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const validated = loginSchema.parse(req.body);
      const result = await AuthService.login(
        validated.email,
        validated.password,
      );

      res.status(200).json({
        message: 'Login successful',
        data: result,
      });
    } catch (err: any) {
      if (err instanceof ZodError) {
        res.status(400).json({
          error: 'Validation failed',
          details: err.flatten().fieldErrors,
        });
        return;
      }
      if (err.statusCode) {
        res.status(err.statusCode).json({ error: err.message });
        return;
      }
      next(err);
    }
  }

  static async refresh(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const validated = refreshSchema.parse(req.body);
      const tokens = await AuthService.refresh(validated.refreshToken);

      res.status(200).json({
        message: 'Tokens refreshed successfully',
        data: { tokens },
      });
    } catch (err: any) {
      if (err instanceof ZodError) {
        res.status(400).json({
          error: 'Validation failed',
          details: err.flatten().fieldErrors,
        });
        return;
      }
      if (err.statusCode) {
        res.status(err.statusCode).json({ error: err.message });
        return;
      }
      next(err);
    }
  }

  static async logout(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const validated = logoutSchema.parse(req.body);
      await AuthService.logout(validated.refreshToken);

      res.status(200).json({
        message: 'Logged out successfully',
      });
    } catch (err: any) {
      if (err instanceof ZodError) {
        res.status(400).json({
          error: 'Validation failed',
          details: err.flatten().fieldErrors,
        });
        return;
      }
      next(err);
    }
  }

  static async deleteAccount(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      await AuthService.deleteAccount(userId);

      res.status(200).json({
        message: 'Account deleted successfully',
      });
    } catch (err) {
      next(err);
    }
  }
}

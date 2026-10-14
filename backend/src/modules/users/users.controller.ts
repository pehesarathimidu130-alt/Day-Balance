import { Request, Response, NextFunction } from 'express';
import { ZodError } from 'zod';
import { UsersService } from './users.service';
import { updateProfileSchema } from './users.validation';

export class UsersController {
  static async getProfile(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const user = await UsersService.getProfile(userId);
      res.status(200).json({
        data: { user },
      });
    } catch (err: any) {
      if (err.statusCode) {
        res.status(err.statusCode).json({ error: err.message });
        return;
      }
      next(err);
    }
  }

  static async updateProfile(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const validated = updateProfileSchema.parse(req.body);
      const updatedUser = await UsersService.updateProfile(userId, validated);

      res.status(200).json({
        message: 'Profile updated successfully',
        data: { user: updatedUser },
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
}

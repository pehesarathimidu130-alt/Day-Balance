import { Request, Response, NextFunction } from 'express';
import { ZodError } from 'zod';
import { TimerService } from './timer.service';
import { startTimerSchema, timerStatusQuerySchema } from './timer.validation';

export class TimerController {
  static async start(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const validated = startTimerSchema.parse(req.body);
      const result = await TimerService.startTimer(
        userId,
        validated.planItemId,
      );

      res.status(200).json({
        message: 'Timer started successfully',
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

  static async pause(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const result = await TimerService.pauseTimer(userId);

      res.status(200).json({
        message: result.message,
        data: { pausedItem: result.pausedItem },
      });
    } catch (err: any) {
      if (err.statusCode) {
        res.status(err.statusCode).json({ error: err.message });
        return;
      }
      next(err);
    }
  }

  static async getStatus(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const query = timerStatusQuerySchema.parse(req.query);
      const dateStr =
        query.date || new Date().toISOString().split('T')[0];

      const status = await TimerService.getStatus(userId, dateStr);

      res.status(200).json({
        data: status,
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
}

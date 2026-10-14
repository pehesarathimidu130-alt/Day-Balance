import { Request, Response, NextFunction } from 'express';
import { statsService } from './stats.service';

export class StatsController {
  async getSimilarRoutines(
    req: Request,
    res: Response,
    next: NextFunction,
  ): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const wakeTime = typeof req.query.wakeTime === 'string' ? req.query.wakeTime : undefined;
      const bedtime = typeof req.query.bedtime === 'string' ? req.query.bedtime : undefined;

      const result = await statsService.getSimilarRoutines(userId, wakeTime, bedtime);

      res.status(200).json({
        data: result,
      });
    } catch (err) {
      next(err);
    }
  }
}

export const statsController = new StatsController();

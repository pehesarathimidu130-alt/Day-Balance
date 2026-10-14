import { Request, Response, NextFunction } from 'express';
import { ZodError } from 'zod';
import { PlansService } from './plans.service';
import {
  createPlanSchema,
  updatePlanSchema,
  planDateQuerySchema,
} from './plans.validation';

export class PlansController {
  static async createPlan(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const validated = createPlanSchema.parse(req.body);
      const plan = await PlansService.createPlan(userId, validated);

      res.status(201).json({
        message: 'Plan created successfully',
        data: { plan },
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

  static async getToday(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const query = planDateQuerySchema.parse(req.query);
      const dateStr =
        query.date || new Date().toISOString().split('T')[0];

      const plan = await PlansService.getPlanByDate(userId, dateStr);

      res.status(200).json({
        data: { plan },
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

  static async getById(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const planId = req.params.id as string;
      const plan = await PlansService.getPlanById(userId, planId);

      res.status(200).json({
        data: { plan },
      });
    } catch (err: any) {
      if (err.statusCode) {
        res.status(err.statusCode).json({ error: err.message });
        return;
      }
      next(err);
    }
  }

  static async updatePlan(req: Request, res: Response, next: NextFunction): Promise<void> {
    try {
      const userId = req.userId;
      if (!userId) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }

      const planId = req.params.id as string;
      const validated = updatePlanSchema.parse(req.body);
      const updatedPlan = await PlansService.updatePlan(
        userId,
        planId,
        validated,
      );

      res.status(200).json({
        message: 'Plan updated successfully',
        data: { plan: updatedPlan },
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

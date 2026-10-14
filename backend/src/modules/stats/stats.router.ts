import { Router } from 'express';
import { statsController } from './stats.controller';
import { authenticate } from '../../middleware/authenticate';

const router = Router();

// GET /api/stats/similar-routines (authenticated)
router.get('/similar-routines', authenticate, (req, res, next) =>
  statsController.getSimilarRoutines(req, res, next),
);

export const statsRouter = router;

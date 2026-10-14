import { Router } from 'express';
import { UsersController } from './users.controller';
import { authenticate } from '../../middleware/authenticate';

const router = Router();

// All users routes require authentication
router.use(authenticate);

router.get('/me', UsersController.getProfile);
router.patch('/me', UsersController.updateProfile);

export { router as usersRouter };

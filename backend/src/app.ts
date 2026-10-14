import express from 'express';
import helmet from 'helmet';
import cors from 'cors';
import { env } from './config/env';
import { healthRouter } from './modules/health/health.router';
import { authRouter } from './modules/auth';
import { usersRouter } from './modules/users';
import { categoriesRouter } from './modules/categories';
import { plansRouter } from './modules/plans';
import { timerRouter } from './modules/timer';
import { errorHandler } from './middleware/error-handler';

const app = express();

// Security
app.use(helmet());
app.use(
  cors({
    origin: env.CORS_ORIGIN === '*' ? '*' : env.CORS_ORIGIN.split(','),
  }),
);

// Body parsing
app.use(express.json());

// Routes
app.use('/health', healthRouter);
app.use('/api/auth', authRouter);
app.use('/api/users', usersRouter);
app.use('/api/categories', categoriesRouter);
app.use('/api/plans', plansRouter);
app.use('/api/timer', timerRouter);

// Global Error Handler
app.use(errorHandler);

export { app };

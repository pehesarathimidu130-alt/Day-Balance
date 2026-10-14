import express from 'express';
import helmet from 'helmet';
import cors from 'cors';
import { env } from './config/env';
import { healthRouter } from './modules/health/health.router';

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

// TODO: Mount module routers here as they are built
// app.use('/api/auth', authRouter);
// app.use('/api/users', usersRouter);
// app.use('/api/categories', categoriesRouter);
// app.use('/api/plans', plansRouter);
// app.use('/api/timer', timerRouter);

export { app };

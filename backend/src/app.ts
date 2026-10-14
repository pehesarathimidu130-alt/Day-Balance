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
    origin: (origin, callback) => {
      // Allow requests with no origin (e.g. mobile apps using Dio, Postman, curl)
      if (!origin) {
        return callback(null, true);
      }

      // In development only, allow http://localhost and http://127.0.0.1 on any port
      if (env.NODE_ENV === 'development') {
        const isLocalhost = /^http:\/\/(localhost|127\.0\.0\.1)(:\d+)?$/.test(origin);
        if (isLocalhost) {
          return callback(null, true);
        }
      }

      // Check configured origins
      if (env.CORS_ORIGIN === '*') {
        return callback(null, true);
      }

      const allowedOrigins = env.CORS_ORIGIN.split(',').map((o) => o.trim());
      if (allowedOrigins.includes(origin)) {
        return callback(null, true);
      }

      return callback(new Error(`Origin ${origin} not allowed by CORS`));
    },
    credentials: true,
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

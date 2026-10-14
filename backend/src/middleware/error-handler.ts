import { Request, Response, NextFunction } from 'express';

/**
 * Global error handler. Catches unhandled errors and returns consistent JSON.
 */
export const errorHandler = (
  err: Error,
  _req: Request,
  res: Response,
  _next: NextFunction,
) => {
  console.error('Unhandled error:', err.message);
  res.status(500).json({
    status: 'error',
    message:
      process.env.NODE_ENV === 'production'
        ? 'Internal server error'
        : err.message,
  });
};

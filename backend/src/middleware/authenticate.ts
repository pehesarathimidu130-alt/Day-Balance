import { Request, Response, NextFunction } from 'express';

/**
 * Authenticate middleware: verifies JWT access token from Authorization header.
 * Attaches `req.userId` on success; returns 401 on invalid/expired token.
 * TODO: Implement JWT verification
 */
export const authenticate = (req: Request, _res: Response, next: NextFunction) => {
  // Placeholder: will verify JWT and attach userId to request
  next();
};

import { Router, Request, Response } from 'express';
import { db } from '../../db/connection';
import { categories } from '../../db/schema';
import { storageClient, STORAGE_BUCKET } from '../../storage/storage.client';
import { ListObjectsV2Command } from '@aws-sdk/client-s3';

const healthRouter = Router();

healthRouter.get('/', async (_req: Request, res: Response) => {
  let dbStatus = 'unknown';
  let storageStatus = 'unknown';
  let categoryCount = 0;

  try {
    const cats = await db.select().from(categories);
    categoryCount = cats.length;
    dbStatus = 'connected';
  } catch (err: any) {
    dbStatus = `error: ${err.message}`;
  }

  try {
    await storageClient.send(
      new ListObjectsV2Command({
        Bucket: STORAGE_BUCKET,
        MaxKeys: 1,
      }),
    );
    storageStatus = 'connected';
  } catch (err: any) {
    storageStatus = `error: ${err.message}`;
  }

  const isHealthy = dbStatus === 'connected' && storageStatus === 'connected';

  res.status(isHealthy ? 200 : 503).json({
    status: isHealthy ? 'ok' : 'degraded',
    timestamp: new Date().toISOString(),
    uptime: process.uptime(),
    services: {
      postgres: {
        status: dbStatus,
        categoriesCount: categoryCount,
      },
      objectStorage: {
        status: storageStatus,
        bucket: STORAGE_BUCKET,
      },
    },
  });
});

export { healthRouter };


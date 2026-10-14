import { app } from './app';
import { env } from './config/env';

const start = () => {
  app.listen(env.PORT, () => {
    console.log(`🚀 Day-Balance API running on port ${env.PORT} [${env.NODE_ENV}]`);
  });
};

start();

import { db } from '../db/connection';
import { categories, users } from '../db/schema';
import { storageClient, STORAGE_BUCKET } from '../storage/storage.client';
import { PutObjectCommand, GetObjectCommand, DeleteObjectCommand, ListObjectsV2Command } from '@aws-sdk/client-s3';
import { eq } from 'drizzle-orm';
import crypto from 'crypto';

async function runTest() {
  console.log('=== Neon Services End-to-End Verification ===\n');

  // 1. Verify Neon PostgreSQL
  console.log('[1/2] Testing Neon PostgreSQL Connection...');
  const cats = await db.select().from(categories);
  console.log(`✓ Successfully queried categories from Neon Postgres. Total found: ${cats.length}`);
  if (cats.length !== 7) {
    throw new Error(`Expected 7 seeded categories, found ${cats.length}`);
  }

  const testEmail = `neon-test-${Date.now()}@example.com`;
  console.log(`- Inserting test user record (${testEmail})...`);
  const [createdUser] = await db
    .insert(users)
    .values({
      email: testEmail,
      passwordHash: 'test-hash-for-verification',
    })
    .returning();
  console.log(`✓ Inserted test user ID: ${createdUser.id}`);

  console.log('- Cleaning up test user record...');
  await db.delete(users).where(eq(users.id, createdUser.id));
  console.log('✓ Successfully deleted test user. Postgres verified!\n');

  // 2. Verify Neon Object Storage
  console.log('[2/2] Testing Neon Object Storage (Bucket: ' + STORAGE_BUCKET + ')...');
  console.log('- Listing objects in bucket...');
  const listRes = await storageClient.send(
    new ListObjectsV2Command({
      Bucket: STORAGE_BUCKET,
      MaxKeys: 10,
    })
  );
  console.log(`✓ Bucket accessible. Existing objects count: ${listRes.KeyCount ?? 0}`);

  const testKey = `test-artifacts/probe-${Date.now()}.txt`;
  const testPayload = `Day-Balance Neon Storage verification probe - ${new Date().toISOString()}`;
  console.log(`- Uploading probe file to '${testKey}'...`);
  await storageClient.send(
    new PutObjectCommand({
      Bucket: STORAGE_BUCKET,
      Key: testKey,
      Body: testPayload,
      ContentType: 'text/plain',
    })
  );
  console.log('✓ Upload successful.');

  console.log('- Downloading probe file to verify content integrity...');
  const getRes = await storageClient.send(
    new GetObjectCommand({
      Bucket: STORAGE_BUCKET,
      Key: testKey,
    })
  );
  const downloadedBody = await getRes.Body?.transformToString();
  if (downloadedBody !== testPayload) {
    throw new Error(`Payload mismatch! Expected: "${testPayload}", Got: "${downloadedBody}"`);
  }
  console.log('✓ Download verified: payload matches exactly.');

  console.log('- Deleting probe file...');
  await storageClient.send(
    new DeleteObjectCommand({
      Bucket: STORAGE_BUCKET,
      Key: testKey,
    })
  );
  console.log('✓ Deleted probe file. Object Storage verified!\n');

  console.log('🎉 ALL NEON SERVICES VERIFIED END-TO-END SUCCESSFULLY!');
  process.exit(0);
}

runTest().catch((err) => {
  console.error('❌ Neon service verification failed:', err);
  process.exit(1);
});

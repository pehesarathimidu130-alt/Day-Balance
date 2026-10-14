import dotenv from 'dotenv';
dotenv.config();

import { eq } from 'drizzle-orm';
import { db } from '../db/connection';
import { users } from '../db/schema';
import { AuthService } from '../modules/auth/auth.service';

const TEST_EMAIL = 'test@daybalance.dev';
const TEST_DISPLAY_NAME = 'Test User';

async function main() {
  const password = process.env.TEST_USER_PASSWORD;

  if (!password || password.trim().length < 8) {
    console.error('❌ Error: TEST_USER_PASSWORD environment variable is required and must be at least 8 characters long.');
    console.error('   Please define TEST_USER_PASSWORD in your backend/.env file.');
    process.exit(1);
  }

  console.log(`Checking if user ${TEST_EMAIL} already exists...`);

  const [existingUser] = await db
    .select({
      id: users.id,
      email: users.email,
    })
    .from(users)
    .where(eq(users.email, TEST_EMAIL))
    .limit(1);

  if (existingUser) {
    console.log(`ℹ️  User "${TEST_EMAIL}" already exists (ID: ${existingUser.id}). Nothing to do.`);
    process.exit(0);
  }

  console.log(`Registering test user "${TEST_EMAIL}" via AuthService...`);

  try {
    const { user } = await AuthService.register(
      TEST_EMAIL,
      password.trim(),
      TEST_DISPLAY_NAME,
    );

    console.log('✅ Test user created successfully:');
    console.log(`   ID:    ${user.id}`);
    console.log(`   Email: ${user.email}`);
    console.log(`   Name:  ${user.displayName}`);
    process.exit(0);
  } catch (err) {
    if ((err as { statusCode?: number }).statusCode === 409) {
      console.log(`ℹ️  User "${TEST_EMAIL}" was already registered concurrently. Nothing to do.`);
      process.exit(0);
    }
    console.error('❌ Failed to create test user:', err);
    process.exit(1);
  }
}

main().catch((err) => {
  console.error('❌ Unexpected error in create-test-user script:', err);
  process.exit(1);
});

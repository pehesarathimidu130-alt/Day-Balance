import { db } from '../db/connection';
import { users } from '../db/schema';
import { eq } from 'drizzle-orm';

async function testLoginFlow() {
  console.log('=== Backend Auth & Login Flow Live Verification ===\n');

  const testEmail = `test-user-${Date.now()}@example.com`;
  const testPassword = 'Password123!';
  const testName = 'Maya Chen';

  const baseUrl = 'http://localhost:3000';

  // 1. Register test user
  console.log(`[1/4] Registering test user: ${testEmail}...`);
  const regRes = await fetch(`${baseUrl}/api/auth/register`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      email: testEmail,
      password: testPassword,
      displayName: testName,
    }),
  });

  const regData: any = await regRes.json();
  if (regRes.status !== 201) {
    throw new Error(`Registration failed (${regRes.status}): ${JSON.stringify(regData)}`);
  }
  console.log('✓ User registered successfully. ID:', regData.data.user.id);
  console.log('  onboardingDone:', regData.data.user.onboardingDone);

  const userId = regData.data.user.id;

  try {
    // 2. Test login with wrong password
    console.log('\n[2/4] Testing login with WRONG password...');
    const wrongRes = await fetch(`${baseUrl}/api/auth/login`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        email: testEmail,
        password: 'WrongPassword!',
      }),
    });
    const wrongData: any = await wrongRes.json();
    console.log(`✓ Received status ${wrongRes.status} (expected 401).`);
    console.log(`✓ Error response: "${wrongData.error}"`);
    if (wrongRes.status !== 401 || wrongData.error !== 'Invalid email or password') {
      throw new Error(`Expected 401 'Invalid email or password', got: ${JSON.stringify(wrongData)}`);
    }

    // 3. Test login with correct password
    console.log('\n[3/4] Testing login with CORRECT password...');
    const loginRes = await fetch(`${baseUrl}/api/auth/login`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        email: testEmail,
        password: testPassword,
      }),
    });
    const loginData: any = await loginRes.json();
    if (loginRes.status !== 200) {
      throw new Error(`Login failed (${loginRes.status}): ${JSON.stringify(loginData)}`);
    }
    console.log('✓ Login successful (200 OK)');
    console.log('✓ Returned user email:', loginData.data.user.email);
    console.log('✓ Returned onboardingDone:', loginData.data.user.onboardingDone);
    console.log('✓ Access token length:', loginData.data.tokens.accessToken.length);
    console.log('✓ Refresh token length:', loginData.data.tokens.refreshToken.length);

    // 4. Test token refresh
    console.log('\n[4/4] Testing token refresh with returned refresh token...');
    const refreshRes = await fetch(`${baseUrl}/api/auth/refresh`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        refreshToken: loginData.data.tokens.refreshToken,
      }),
    });
    const refreshData: any = await refreshRes.json();
    if (refreshRes.status !== 200) {
      throw new Error(`Refresh failed (${refreshRes.status}): ${JSON.stringify(refreshData)}`);
    }
    console.log('✓ Token refresh successful (200 OK)');
    console.log('✓ New access token length:', refreshData.data.tokens.accessToken.length);
    console.log('✓ New refresh token length:', refreshData.data.tokens.refreshToken.length);

    console.log('\n🎉 ALL AUTH & LOGIN ENDPOINTS VERIFIED LIVE WITH REAL BACKEND REQUESTS!');
  } finally {
    // Cleanup
    console.log('\nCleaning up test user from Neon database...');
    await db.delete(users).where(eq(users.id, userId));
    console.log('✓ Test user cleaned up.');
  }
}

testLoginFlow()
  .then(() => process.exit(0))
  .catch((err) => {
    console.error('❌ Verification failed:', err);
    process.exit(1);
  });

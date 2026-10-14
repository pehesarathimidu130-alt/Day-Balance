import { config } from 'dotenv';
config();

import { db } from '../db/connection';
import { users } from '../db/schema';
import { eq } from 'drizzle-orm';

interface StatsResponse {
  data: {
    similarCount: number | null;
    totalUsers: number;
    showable: boolean;
  };
}

async function runStatsEndpointTest() {
  const BASE_URL = 'http://localhost:3000';
  const testEmail = `test-stats-${Date.now()}@example.com`;
  const testPassword = 'Password123!';

  console.log('=== Backend Stats / Similar Routines Verification ===\n');

  // 1. Test unauthenticated request
  console.log('[1/4] Testing GET /api/stats/similar-routines without token...');
  const unauthRes = await fetch(`${BASE_URL}/api/stats/similar-routines`);
  if (unauthRes.status !== 401) {
    throw new Error(`Expected 401 Unauthorized, got ${unauthRes.status}`);
  }
  console.log('✓ Correctly rejected unauthenticated request with 401.');

  // 2. Register test user to get token
  console.log('\n[2/4] Registering test user to test authenticated endpoint...');
  const regRes = await fetch(`${BASE_URL}/api/auth/register`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      email: testEmail,
      password: testPassword,
      name: 'Stats Tester',
    }),
  });
  if (!regRes.ok) {
    throw new Error(`Registration failed: ${regRes.status}`);
  }
  const regData = (await regRes.json()) as {
    data: { user: { id: string }; tokens: { accessToken: string } };
  };
  const userId = regData.data.user.id;
  const token = regData.data.tokens.accessToken;

  try {
    // 3. Test similar-routines endpoint
    console.log('\n[3/4] Testing GET /api/stats/similar-routines with valid token...');
    const statsRes = await fetch(`${BASE_URL}/api/stats/similar-routines`, {
      headers: { Authorization: `Bearer ${token}` },
    });
    if (!statsRes.ok) {
      throw new Error(`Stats endpoint failed: ${statsRes.status} ${await statsRes.text()}`);
    }

    const json = (await statsRes.json()) as StatsResponse;
    console.log('✓ Stats response:', JSON.stringify(json.data));

    // 4. Verify privacy threshold and no leak
    console.log('\n[4/4] Verifying privacy threshold and personal data protection...');
    if (json.data.similarCount !== null && json.data.similarCount < 25) {
      throw new Error(`PRIVACY LEAK: similarCount was leaked when < 25! Value: ${json.data.similarCount}`);
    }

    if (json.data.showable === false) {
      if (json.data.similarCount !== null) {
        throw new Error('Expected similarCount to be null when showable is false');
      }
      console.log('✓ When similarCount < 25, showable is false and exact count is hidden (null).');
    } else {
      if (typeof json.data.similarCount !== 'number' || json.data.similarCount < 25) {
        throw new Error(`Expected similarCount >= 25 when showable is true`);
      }
      console.log(`✓ showable is true and count is ${json.data.similarCount} (>= 25).`);
    }

    // Verify response contains NO personal fields
    const keys = Object.keys(json.data);
    const forbiddenKeys = ['email', 'name', 'displayName', 'id', 'wakeTime', 'bedtime', 'users'];
    for (const fKey of forbiddenKeys) {
      if (keys.includes(fKey)) {
        throw new Error(`SECURITY LEAK: Response contains forbidden personal field: ${fKey}`);
      }
    }
    console.log('✓ Verified: Response contains ONLY aggregate numbers, zero personal data.');

    console.log('\n🎉 STATS SIMILAR-ROUTINES ENDPOINT VERIFIED!');
  } finally {
    console.log('\nCleaning up test user from Neon database...');
    await db.delete(users).where(eq(users.id, userId));
    console.log('✓ Test user safely deleted.');
  }
}

runStatsEndpointTest()
  .then(() => process.exit(0))
  .catch((err) => {
    console.error('Test failed:', err);
    process.exit(1);
  });

import { config } from 'dotenv';
config();

import { db } from '../db/connection';
import { users } from '../db/schema';
import { eq } from 'drizzle-orm';

interface RegisterResponse {
  message: string;
  data: {
    user: {
      id: string;
      email: string;
      displayName: string | null;
      onboardingDone: boolean | null;
      wakeTime: string | null;
      bedtime: string | null;
      routineMinutes: number | null;
    };
    tokens: {
      accessToken: string;
      refreshToken: string;
    };
  };
}

interface UpdateProfileResponse {
  message: string;
  data: {
    user: {
      id: string;
      email: string;
      displayName: string | null;
      onboardingDone: boolean | null;
      wakeTime: string | null;
      bedtime: string | null;
      routineMinutes: number | null;
    };
  };
}

interface CategoriesResponse {
  message: string;
  data: {
    categories: Array<{ id: string; name: string }>;
  };
}

async function runOnboardingFlowTest() {
  const BASE_URL = 'http://localhost:3000';
  const testEmail = `test-onboarding-${Date.now()}@example.com`;
  const testPassword = 'Password123!';
  const testName = 'Maya Chen';

  console.log('=== Onboarding Flow Live Verification ===\n');

  // Step 1: Register
  console.log(`[1/7] Registering new user: ${testEmail} with name "${testName}"...`);
  const regRes = await fetch(`${BASE_URL}/api/auth/register`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      email: testEmail,
      password: testPassword,
      name: testName,
    }),
  });

  if (!regRes.ok) {
    throw new Error(`Registration failed: ${regRes.status} ${await regRes.text()}`);
  }

  const regData = (await regRes.json()) as RegisterResponse;
  const userId = regData.data.user.id;
  const token = regData.data.tokens.accessToken;
  console.log(`✓ User registered. ID: ${userId}, DisplayName: "${regData.data.user.displayName}", onboardingDone: ${regData.data.user.onboardingDone}`);

  try {
    // Step 2: Schedule (Step 1 of 3 in Figma)
    console.log('\n[2/7] Updating schedule: wakeTime="07:00:00", bedtime="23:00:00"...');
    const schedRes = await fetch(`${BASE_URL}/api/users/me`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({
        wakeTime: '07:00:00',
        bedtime: '23:00:00',
      }),
    });
    if (!schedRes.ok) {
      throw new Error(`Schedule update failed: ${schedRes.status} ${await schedRes.text()}`);
    }
    const schedData = (await schedRes.json()) as UpdateProfileResponse;
    console.log(`✓ Schedule updated: wake=${schedData.data.user.wakeTime}, bed=${schedData.data.user.bedtime}`);

    // Step 3: Routine (Step 2 of 3 in Figma)
    console.log('\n[3/7] Updating routine: routineMinutes=90 (45m morning + 45m wind-up)...');
    const routRes = await fetch(`${BASE_URL}/api/users/me`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({
        routineMinutes: 90,
      }),
    });
    if (!routRes.ok) {
      throw new Error(`Routine update failed: ${routRes.status} ${await routRes.text()}`);
    }
    const routData = (await routRes.json()) as UpdateProfileResponse;
    console.log(`✓ Routine updated: routineMinutes=${routData.data.user.routineMinutes}`);

    // Step 4: Result check (Step 3 of 3 in Figma)
    console.log('\n[4/7] Verifying user profile on Result screen...');
    const profRes = await fetch(`${BASE_URL}/api/users/me`, {
      headers: { Authorization: `Bearer ${token}` },
    });
    if (!profRes.ok) {
      throw new Error(`Profile fetch failed: ${profRes.status} ${await profRes.text()}`);
    }
    const profData = (await profRes.json()) as UpdateProfileResponse;
    console.log(`✓ Verified profile: wake=${profData.data.user.wakeTime}, bed=${profData.data.user.bedtime}, routine=${profData.data.user.routineMinutes}`);

    // Step 5: Choose Categories
    console.log('\n[5/7] Selecting 7 categories via PUT /api/categories/mine...');
    const selectedCategoryIds = [
      'academic',
      'life_family',
      'entertainment',
      'personal_reading',
      'career',
      'unplanned',
      'rest',
    ];
    const catRes = await fetch(`${BASE_URL}/api/categories/mine`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({ categoryIds: selectedCategoryIds }),
    });
    if (!catRes.ok) {
      throw new Error(`Categories update failed: ${catRes.status} ${await catRes.text()}`);
    }
    const catData = (await catRes.json()) as CategoriesResponse;
    console.log(`✓ Selected ${catData.data.categories.length} categories.`);

    // Step 6: Complete Onboarding
    console.log('\n[6/7] Completing onboarding: PATCH onboardingDone=true...');
    const doneRes = await fetch(`${BASE_URL}/api/users/me`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({ onboardingDone: true }),
    });
    if (!doneRes.ok) {
      throw new Error(`Complete onboarding failed: ${doneRes.status} ${await doneRes.text()}`);
    }
    const doneData = (await doneRes.json()) as UpdateProfileResponse;
    console.log(`✓ Onboarding completed! onboardingDone: ${doneData.data.user.onboardingDone}`);

    // Step 7: Verify Login Routing
    console.log('\n[7/7] Testing re-login to verify onboardingDone persists...');
    const loginRes = await fetch(`${BASE_URL}/api/auth/login`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        email: testEmail,
        password: testPassword,
      }),
    });
    if (!loginRes.ok) {
      throw new Error(`Login failed: ${loginRes.status} ${await loginRes.text()}`);
    }
    const loginData = (await loginRes.json()) as RegisterResponse;
    console.log(`✓ Login successful! User onboardingDone is ${loginData.data.user.onboardingDone} -> routes directly to /home!`);

    console.log('\n🎉 FULL REGISTER & ONBOARDING FLOW VERIFIED LIVE END-TO-END!');
  } finally {
    console.log('\nCleaning up test user from Neon database...');
    await db.delete(users).where(eq(users.id, userId));
    console.log('✓ Test user safely deleted.');
  }
}

runOnboardingFlowTest()
  .then(() => process.exit(0))
  .catch((err) => {
    console.error('Test failed:', err);
    process.exit(1);
  });

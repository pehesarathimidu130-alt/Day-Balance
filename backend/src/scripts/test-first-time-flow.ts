import { config } from 'dotenv';
config();

import { db } from '../db/connection';
import { users, userCategories } from '../db/schema';
import { eq } from 'drizzle-orm';

interface AuthResponse {
  data: {
    user: {
      id: string;
      email: string;
      name: string;
      onboardingDone: boolean;
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

interface StatsResponse {
  data: {
    similarCount: number | null;
    totalUsers: number;
    showable: boolean;
  };
}

async function runLiveFirstTimeFlowVerification() {
  const BASE_URL = 'http://localhost:3000';
  const testEmail = `test-onboarding-flow-${Date.now()}@example.com`;
  const testPassword = 'Password123!';
  let userId = '';

  console.log('=== Live First-Time Flow & Setting Up Verification ===\n');

  try {
    // 1. Register new user
    console.log(`[1/6] Registering new user: ${testEmail}...`);
    const regRes = await fetch(`${BASE_URL}/api/auth/register`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        email: testEmail,
        password: testPassword,
        name: 'First Time User',
      }),
    });

    if (!regRes.ok) {
      throw new Error(`Register failed: ${regRes.status} ${await regRes.text()}`);
    }

    const regData = (await regRes.json()) as AuthResponse;
    userId = regData.data.user.id;
    const token = regData.data.tokens.accessToken;

    console.log(`✓ User registered. ID: ${userId}`);
    console.log(`  Initial onboardingDone: ${regData.data.user.onboardingDone} (expected false)`);

    // 2. Query DB to verify initial state (SELECT only)
    console.log('\n[2/6] Verifying initial database state via SELECT...');
    const [initialUser] = await db
      .select()
      .from(users)
      .where(eq(users.id, userId));

    if (!initialUser) throw new Error('User not found in database');
    if (initialUser.onboardingDone !== false) {
      throw new Error(`Expected onboardingDone=false, got ${initialUser.onboardingDone}`);
    }
    console.log('✓ Database confirmed: onboardingDone is false.');

    // 3. Setting-Up screen fetches similar-routines stats
    console.log('\n[3/6] Simulating Setting-Up screen: fetching GET /api/stats/similar-routines...');
    const statsRes = await fetch(`${BASE_URL}/api/stats/similar-routines`, {
      headers: { Authorization: `Bearer ${token}` },
    });
    if (!statsRes.ok) {
      throw new Error(`Stats endpoint failed: ${statsRes.status}`);
    }
    const statsData = (await statsRes.json()) as StatsResponse;
    console.log(`✓ Stats returned: showable=${statsData.data.showable}, similarCount=${statsData.data.similarCount}`);

    // 4. Setting-Up screen performs real save: categories + profile + onboardingDone = true
    console.log('\n[4/6] Simulating Setting-Up screen save: saving categories and schedule...');
    const chosenCategories = ['academic', 'career', 'entertainment', 'rest', 'unplanned'];
    const catRes = await fetch(`${BASE_URL}/api/categories/mine`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({ categoryIds: chosenCategories }),
    });
    if (!catRes.ok) {
      throw new Error(`Categories update failed: ${catRes.status}`);
    }

    const profileRes = await fetch(`${BASE_URL}/api/users/me`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({
        wakeTime: '06:30:00',
        bedtime: '22:30:00',
        routineMinutes: 90,
        onboardingDone: true,
      }),
    });
    if (!profileRes.ok) {
      throw new Error(`Profile update failed: ${profileRes.status}`);
    }
    console.log('✓ Successfully saved categories and updated profile with onboardingDone=true.');

    // 5. Database confirmation (SELECT only)
    console.log('\n[5/6] Verifying database records via SELECT only...');
    const [savedUser] = await db
      .select()
      .from(users)
      .where(eq(users.id, userId));

    if (!savedUser) throw new Error('Saved user missing');
    if (savedUser.onboardingDone !== true) {
      throw new Error(`Expected onboardingDone=true, got ${savedUser.onboardingDone}`);
    }
    if (savedUser.wakeTime !== '06:30:00') {
      throw new Error(`Expected wakeTime='06:30:00', got ${savedUser.wakeTime}`);
    }
    if (savedUser.bedtime !== '22:30:00') {
      throw new Error(`Expected bedtime='22:30:00', got ${savedUser.bedtime}`);
    }
    if (savedUser.routineMinutes !== 90) {
      throw new Error(`Expected routineMinutes=90, got ${savedUser.routineMinutes}`);
    }

    const userCats = await db
      .select()
      .from(userCategories)
      .where(eq(userCategories.userId, userId));

    if (userCats.length !== 5) {
      throw new Error(`Expected 5 categories saved, got ${userCats.length}`);
    }
    console.log('✓ Database confirmed via SELECT:');
    console.log(`  wakeTime: ${savedUser.wakeTime}`);
    console.log(`  bedtime: ${savedUser.bedtime}`);
    console.log(`  routineMinutes: ${savedUser.routineMinutes}`);
    console.log(`  onboardingDone: ${savedUser.onboardingDone}`);
    console.log(`  categories count: ${userCats.length}`);

    // 6. Test returning user login: must return onboardingDone: true (skips onboarding)
    console.log('\n[6/6] Testing returning user login: must skip onboarding...');
    const loginRes = await fetch(`${BASE_URL}/api/auth/login`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        email: testEmail,
        password: testPassword,
      }),
    });
    if (!loginRes.ok) {
      throw new Error(`Login failed: ${loginRes.status}`);
    }
    const loginData = (await loginRes.json()) as AuthResponse;
    if (loginData.data.user.onboardingDone !== true) {
      throw new Error(`Returning user onboardingDone must be true to skip onboarding, got ${loginData.data.user.onboardingDone}`);
    }
    console.log('✓ Returning user login returned onboardingDone=true (app will skip onboarding directly to /home).');

    console.log('\n🎉 ALL FIRST-TIME FLOW & DATABASE CHECKS PASSED LIVE!');
  } finally {
    if (userId) {
      console.log('\nCleaning up test user from Neon database...');
      await db.delete(userCategories).where(eq(userCategories.userId, userId));
      await db.delete(users).where(eq(users.id, userId));
      console.log('✓ Test user and associated categories safely cleaned up.');
    }
  }
}

runLiveFirstTimeFlowVerification()
  .then(() => process.exit(0))
  .catch((err) => {
    console.error('Live check failed:', err);
    process.exit(1);
  });

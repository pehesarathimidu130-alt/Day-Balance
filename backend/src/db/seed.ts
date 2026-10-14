import { db } from './connection';
import { categories } from './schema';

const SEED_CATEGORIES = [
  {
    id: 'academic',
    name: 'Academic',
    description: 'Assignments, projects, tutorials, lab sheets, studying',
    color: '#4A90D9',
    icon: 'school',
    sortOrder: 1,
  },
  {
    id: 'life_family',
    name: 'Life/Family',
    description: 'Chores, errands, family time, commuting',
    color: '#E67E22',
    icon: 'family_restroom',
    sortOrder: 2,
  },
  {
    id: 'entertainment',
    name: 'Entertainment',
    description: 'YouTube, games, social media, movies',
    color: '#E74C3C',
    icon: 'sports_esports',
    sortOrder: 3,
  },
  {
    id: 'personal_reading',
    name: 'Personal/Reading',
    description: 'Reading, hobbies, learning for fun, exercise',
    color: '#2ECC71',
    icon: 'menu_book',
    sortOrder: 4,
  },
  {
    id: 'career',
    name: 'Career',
    description: 'Freelancing, portfolio, job applications, side projects',
    color: '#9B59B6',
    icon: 'work',
    sortOrder: 5,
  },
  {
    id: 'unplanned',
    name: 'Unplanned/Extra capacity',
    description: 'Buffer for surprises and overruns',
    color: '#95A5A6',
    icon: 'schedule',
    sortOrder: 6,
  },
  {
    id: 'rest',
    name: 'Rest/Recovery',
    description: 'Naps, breaks, screen-free relaxing',
    color: '#1ABC9C',
    icon: 'self_improvement',
    sortOrder: 7,
  },
];

async function seed() {
  console.log('🌱 Seeding categories...');

  for (const cat of SEED_CATEGORIES) {
    await db
      .insert(categories)
      .values(cat)
      .onConflictDoNothing({ target: categories.id });
  }

  console.log('✅ Categories seeded successfully');
  process.exit(0);
}

seed().catch((err) => {
  console.error('❌ Seed failed:', err);
  process.exit(1);
});

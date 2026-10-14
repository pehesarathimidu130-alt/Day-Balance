import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

/// The 7 fixed Day-Balance categories, matching the backend seed data.
class Category {
  final String id;
  final String name;
  final String description;
  final Color color;
  final IconData icon;
  final int sortOrder;

  const Category({
    required this.id,
    required this.name,
    required this.description,
    required this.color,
    required this.icon,
    required this.sortOrder,
  });
}

const List<Category> kCategories = [
  Category(
    id: 'academic',
    name: 'Academic',
    description: 'Assignments, projects, tutorials, lab sheets, studying',
    color: AppColors.academic,
    icon: Icons.school,
    sortOrder: 1,
  ),
  Category(
    id: 'life_family',
    name: 'Life/Family',
    description: 'Chores, errands, family time, commuting',
    color: AppColors.lifeFamily,
    icon: Icons.family_restroom,
    sortOrder: 2,
  ),
  Category(
    id: 'entertainment',
    name: 'Entertainment',
    description: 'YouTube, games, social media, movies',
    color: AppColors.entertainment,
    icon: Icons.sports_esports,
    sortOrder: 3,
  ),
  Category(
    id: 'personal_reading',
    name: 'Personal/Reading',
    description: 'Reading, hobbies, learning for fun, exercise',
    color: AppColors.personalReading,
    icon: Icons.menu_book,
    sortOrder: 4,
  ),
  Category(
    id: 'career',
    name: 'Career',
    description: 'Freelancing, portfolio, job applications, side projects',
    color: AppColors.career,
    icon: Icons.work,
    sortOrder: 5,
  ),
  Category(
    id: 'unplanned',
    name: 'Unplanned/Extra capacity',
    description: 'Buffer for surprises and overruns',
    color: AppColors.unplanned,
    icon: Icons.schedule,
    sortOrder: 6,
  ),
  Category(
    id: 'rest',
    name: 'Rest/Recovery',
    description: 'Naps, breaks, screen-free relaxing',
    color: AppColors.rest,
    icon: Icons.self_improvement,
    sortOrder: 7,
  ),
];

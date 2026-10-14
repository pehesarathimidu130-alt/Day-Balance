import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/welcome_screen.dart';
import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/register_screen.dart';
import '../../features/onboarding/presentation/onboarding_schedule_screen.dart';
import '../../features/onboarding/presentation/onboarding_routine_screen.dart';
import '../../features/onboarding/presentation/onboarding_categories_screen.dart';
import '../../features/planning/presentation/plan_screen.dart';

// Placeholder screens — each will be replaced with real implementations
class _PlaceholderScreen extends StatelessWidget {
  final String title;
  const _PlaceholderScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

/// App router configuration using go_router.
final GoRouter appRouter = GoRouter(
  initialLocation: '/welcome',
  routes: [
    // Auth & Welcome
    GoRoute(
      path: '/welcome',
      name: 'welcome',
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => const RegisterScreen(),
    ),

    // Onboarding
    GoRoute(
      path: '/onboarding/schedule',
      name: 'onboarding-schedule',
      builder: (context, state) => const OnboardingScheduleScreen(),
    ),
    GoRoute(
      path: '/onboarding/routine',
      name: 'onboarding-routine',
      builder: (context, state) => const OnboardingRoutineScreen(),
    ),
    GoRoute(
      path: '/onboarding/categories',
      name: 'onboarding-categories',
      builder: (context, state) => const OnboardingCategoriesScreen(),
    ),

    // Main app
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) =>
          const _PlaceholderScreen(title: 'Today'),
    ),
    GoRoute(
      path: '/plan',
      name: 'plan',
      builder: (context, state) => const PlanScreen(),
    ),
    GoRoute(
      path: '/summary',
      name: 'summary',
      builder: (context, state) =>
          const _PlaceholderScreen(title: 'Day Summary'),
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      builder: (context, state) =>
          const _PlaceholderScreen(title: 'Settings'),
    ),
  ],
);

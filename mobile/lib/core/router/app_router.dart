import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  initialLocation: '/login',
  routes: [
    // Auth
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) =>
          const _PlaceholderScreen(title: 'Login'),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) =>
          const _PlaceholderScreen(title: 'Register'),
    ),

    // Onboarding
    GoRoute(
      path: '/onboarding/schedule',
      name: 'onboarding-schedule',
      builder: (context, state) =>
          const _PlaceholderScreen(title: 'Set Your Schedule'),
    ),
    GoRoute(
      path: '/onboarding/routine',
      name: 'onboarding-routine',
      builder: (context, state) =>
          const _PlaceholderScreen(title: 'Daily Routine'),
    ),
    GoRoute(
      path: '/onboarding/categories',
      name: 'onboarding-categories',
      builder: (context, state) =>
          const _PlaceholderScreen(title: 'Choose Categories'),
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
      builder: (context, state) =>
          const _PlaceholderScreen(title: 'Plan Your Day'),
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

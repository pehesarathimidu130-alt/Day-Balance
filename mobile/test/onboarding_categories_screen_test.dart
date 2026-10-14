import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:day_balance/features/onboarding/presentation/onboarding_categories_screen.dart';

void main() {
  testWidgets('OnboardingCategoriesScreen renders all 7 categories and supports toggling', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: OnboardingCategoriesScreen(),
        ),
      ),
    );

    expect(find.text('Your categories'), findsOneWidget);
    expect(find.text('What fills your day?'), findsOneWidget);
    expect(find.text('Keep what fits. You can change these later.'), findsOneWidget);

    expect(find.text('Academic'), findsOneWidget);
    expect(find.text('Life/Family'), findsOneWidget);
    expect(find.text('Entertainment'), findsOneWidget);
    expect(find.text('Personal/Reading'), findsOneWidget);
    expect(find.text('Career'), findsOneWidget);
    expect(find.text('Unplanned/Extra capacity'), findsOneWidget);
    expect(find.text('Rest/Recovery'), findsOneWidget);

    expect(find.text('7 categories selected'), findsOneWidget);
    expect(find.text('Plan my day'), findsOneWidget);

    // Tap on Academic to deselect
    await tester.tap(find.text('Academic'));
    await tester.pumpAndSettle();

    expect(find.text('6 categories selected'), findsOneWidget);

    // Tap again to reselect
    await tester.tap(find.text('Academic'));
    await tester.pumpAndSettle();

    expect(find.text('7 categories selected'), findsOneWidget);
  });

  testWidgets('Plan my day button navigates to /onboarding/setting-up without saving directly',
      (tester) async {
    final router = GoRouter(
      initialLocation: '/onboarding/categories',
      routes: [
        GoRoute(
          path: '/onboarding/categories',
          builder: (context, state) => const OnboardingCategoriesScreen(),
        ),
        GoRoute(
          path: '/onboarding/setting-up',
          builder: (context, state) => const Scaffold(body: Text('Setting Up Screen')),
        ),
      ],
    );

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp.router(
          routerConfig: router,
        ),
      ),
    );

    expect(find.text('Plan my day'), findsOneWidget);

    // Scroll Plan my day button into view and tap
    await tester.ensureVisible(find.text('Plan my day'));
    await tester.tap(find.text('Plan my day'));
    await tester.pumpAndSettle();

    // Verify it navigates to /onboarding/setting-up
    expect(find.text('Setting Up Screen'), findsOneWidget);
  });
}

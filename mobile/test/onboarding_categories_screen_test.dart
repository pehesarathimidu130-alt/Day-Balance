import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
}

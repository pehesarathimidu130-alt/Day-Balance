import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:day_balance/features/onboarding/presentation/onboarding_result_screen.dart';

void main() {
  testWidgets('OnboardingResultScreen renders all Figma 06 elements', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: OnboardingResultScreen(),
        ),
      ),
    );

    expect(find.text('YOUR DAY · 3 OF 3'), findsOneWidget);
    expect(find.text('You have'), findsOneWidget);
    expect(find.text('14h 30m'), findsOneWidget);
    expect(find.text('per day. Let’s plan it.'), findsOneWidget);
    expect(find.text('Hours awake'), findsOneWidget);
    expect(find.text('16h 00m'), findsOneWidget);
    expect(find.text('Morning routine'), findsOneWidget);
    expect(find.text('Wind-up routine'), findsOneWidget);
    expect(find.text('− 45m'), findsNWidgets(2));
    expect(
      find.text('Not every hour needs a job. A little breathing room is part of a good plan.'),
      findsOneWidget,
    );
    expect(find.text('Choose my categories'), findsOneWidget);
  });
}

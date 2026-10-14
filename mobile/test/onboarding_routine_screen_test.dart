import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:day_balance/features/onboarding/presentation/onboarding_routine_screen.dart';

void main() {
  testWidgets('OnboardingRoutineScreen renders all Figma 05 elements and increments', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: OnboardingRoutineScreen(),
        ),
      ),
    );

    expect(find.text('YOUR DAY · 2 OF 3'), findsOneWidget);
    expect(find.text('Leave room for the everyday.'), findsOneWidget);
    expect(
      find.text('Getting ready and winding down count too. Set this time aside before you plan.'),
      findsOneWidget,
    );
    expect(find.text('Morning routine'), findsOneWidget);
    expect(find.text('Wind-up routine'), findsOneWidget);
    expect(find.text('16h awake − 1h 30m of routines'), findsOneWidget);
    expect(find.text('14h 30m to plan'), findsOneWidget);
    expect(find.text('Adjust in 15-minute steps.'), findsOneWidget);
    expect(find.text('See my daily hours'), findsOneWidget);

    // Tap increase on morning routine
    final increaseButtons = find.bySemanticsLabel('Increase');
    expect(increaseButtons, findsNWidgets(2));

    await tester.tap(increaseButtons.first);
    await tester.pumpAndSettle();

    expect(find.text('60 min'), findsOneWidget);
    expect(find.text('16h awake − 1h 45m of routines'), findsOneWidget);
    expect(find.text('14h 15m to plan'), findsOneWidget);
  });
}

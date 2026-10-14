import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:day_balance/features/onboarding/presentation/onboarding_schedule_screen.dart';

void main() {
  testWidgets('OnboardingScheduleScreen renders all Figma 04 elements', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: OnboardingScheduleScreen(),
        ),
      ),
    );

    expect(find.text('YOUR DAY · 1 OF 3'), findsOneWidget);
    expect(find.text('When does your day begin?'), findsOneWidget);
    expect(
      find.text('Start with your usual rhythm. You can change this whenever life shifts.'),
      findsOneWidget,
    );
    expect(find.text('Wake-up time'), findsOneWidget);
    expect(find.text('Bedtime'), findsOneWidget);
    expect(find.text('Hours awake'), findsOneWidget);
    expect(find.text('16h 00m'), findsOneWidget);
    expect(find.text('7 AM — 11 PM awake · 8 hours of sleep'), findsOneWidget);
    expect(find.text('Next, we’ll make room for your routines.'), findsOneWidget);
    expect(find.text('Continue'), findsOneWidget);
  });
}

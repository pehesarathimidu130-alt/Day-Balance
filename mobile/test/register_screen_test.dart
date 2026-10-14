import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:day_balance/features/auth/presentation/register_screen.dart';

void main() {
  Widget createWidgetUnderTest() {
    return const ProviderScope(
      child: MaterialApp(
        home: RegisterScreen(),
      ),
    );
  }

  group('RegisterScreen Widget Tests', () {
    testWidgets('renders all Figma 02_register elements', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.text('Start with you.'), findsOneWidget);
      expect(find.text('Create your Day-Balance account.'), findsOneWidget);
      expect(find.text('Name'), findsOneWidget);
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
      expect(find.text('Confirm password'), findsOneWidget);
      expect(
        find.text('I agree to the Terms of use and Privacy policy.'),
        findsOneWidget,
      );
      expect(find.text('Create account'), findsOneWidget);
      expect(
        find.byWidgetPredicate((widget) =>
            widget is RichText &&
            widget.text.toPlainText().contains('Already have an account?')),
        findsOneWidget,
      );
    });

    testWidgets('validates required name field', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      await tester.tap(find.text('Create account'));
      await tester.pumpAndSettle();

      expect(find.text('Enter your name'), findsOneWidget);
      expect(find.text('Email is required'), findsOneWidget);
      expect(find.text('Password is required'), findsOneWidget);
    });

    testWidgets('validates password mismatch', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Enter name, email, password, and different confirm password
      final textFields = find.byType(TextField);
      await tester.enterText(textFields.at(0), 'Maya Chen');
      await tester.enterText(textFields.at(1), 'maya@example.com');
      await tester.enterText(textFields.at(2), 'Password123!');
      await tester.enterText(textFields.at(3), 'DifferentPassword!');

      await tester.tap(find.text('Create account'));
      await tester.pumpAndSettle();

      expect(find.text('Passwords don’t match. Try again.'), findsOneWidget);
    });
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:day_balance/features/auth/presentation/login_screen.dart';

void main() {
  Widget createWidgetUnderTest() {
    return const ProviderScope(
      child: MaterialApp(
        home: LoginScreen(),
      ),
    );
  }

  group('LoginScreen Widget Tests', () {
    testWidgets('renders all Figma 03_login.png elements', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle();

      // Heading and subtitle
      expect(find.text('Good to see you.'), findsOneWidget);
      expect(
        find.text('Log in and pick up\nwhere you left off.'),
        findsOneWidget,
      );

      // Form fields
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
      expect(find.text('Forgot password?'), findsOneWidget);

      // Buttons
      expect(find.text('Log in'), findsOneWidget);
      expect(find.text('New to Day-Balance?'), findsOneWidget);
      expect(find.text('Create an account'), findsOneWidget);
    });

    testWidgets('shows validation errors when submitting empty form',
        (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle();

      // Tap Log In without filling inputs
      await tester.tap(find.text('Log in'));
      await tester.pumpAndSettle();

      expect(find.text('Enter your email address'), findsOneWidget);
      expect(find.text('Enter your password'), findsOneWidget);
    });

    testWidgets('validates invalid email format', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle();

      // Enter invalid email
      final emailField = find.widgetWithText(TextField, 'Email');
      await tester.enterText(emailField, 'not-an-email');

      // Enter valid password
      final passwordField = find.widgetWithText(TextField, 'Password');
      await tester.enterText(passwordField, 'validpass123');

      await tester.tap(find.text('Log in'));
      await tester.pumpAndSettle();

      expect(find.text('Enter a valid email address'), findsOneWidget);
      expect(find.text('Enter your password'), findsNothing);
    });

    testWidgets('validates password min length (8 chars)', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle();

      final emailField = find.widgetWithText(TextField, 'Email');
      await tester.enterText(emailField, 'user@example.com');

      final passwordField = find.widgetWithText(TextField, 'Password');
      await tester.enterText(passwordField, 'short');

      await tester.tap(find.text('Log in'));
      await tester.pumpAndSettle();

      expect(find.text('Password must be at least 8 characters'), findsOneWidget);
    });

    testWidgets('toggles password visibility with accessible icon',
        (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle();

      // Password starts obscured
      final passwordTextFieldFinder =
          find.widgetWithText(TextField, 'Password');
      final TextField initialTextField =
          tester.widget<TextField>(passwordTextFieldFinder);
      expect(initialTextField.obscureText, isTrue);

      // Tap the show password toggle
      final toggleButton = find.byTooltip('Show password');
      expect(toggleButton, findsOneWidget);
      await tester.tap(toggleButton);
      await tester.pumpAndSettle();

      // Verify now unobscured
      final TextField revealedTextField =
          tester.widget<TextField>(passwordTextFieldFinder);
      expect(revealedTextField.obscureText, isFalse);
    });
  });
}

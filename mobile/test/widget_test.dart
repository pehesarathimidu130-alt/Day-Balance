import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:day_balance/main.dart';

void main() {
  testWidgets('DayBalanceApp renders smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: DayBalanceApp()));
    await tester.pumpAndSettle();

    // Verify login screen renders heading matching Figma
    expect(find.text('Good to see you.'), findsOneWidget);
  });
}

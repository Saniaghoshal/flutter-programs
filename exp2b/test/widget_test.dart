// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:exp2b/main.dart';

void main() {
  testWidgets('Layout app displays correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainApp());

    // Verify that our layout elements are displayed.
    expect(find.text('I\'m in a column and centred.The row is below.'), findsOneWidget);
    expect(find.text('Stacked on yellow box'), findsOneWidget);
  });
}

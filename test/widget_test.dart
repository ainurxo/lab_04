import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/main.dart';

void main() {
  testWidgets('menu lists the three items', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });

  testWidgets('tapping a card opens its detail screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    // The menu is covered now, so only the detail screen's title is found.
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsNothing);
  });

  testWidgets('back button returns to the menu', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Cheese Pizza'));
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();

    expect(find.text('Box of Fries'), findsOneWidget);
  });
}

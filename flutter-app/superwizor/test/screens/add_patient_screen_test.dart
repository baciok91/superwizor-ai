import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:superwizor/screens/add_patient_screen.dart';

void main() {
  Widget createTestWidget() {
    return const MaterialApp(
      home: AddPatientScreen(),
    );
  }

  testWidgets('Next button is disabled when First Name is empty', (WidgetTester tester) async {
    await tester.pumpWidget(createTestWidget());

    // Initially, first name is empty
    expect(find.byKey(const Key('nextButton')), findsOneWidget);
    final nextButton = tester.widget<ElevatedButton>(find.byKey(const Key('nextButton')));
    expect(nextButton.enabled, isFalse);

    // Enter first name
    await tester.enterText(find.byKey(const Key('firstNameField')), 'Jan');
    await tester.pumpAndSettle();

    final enabledButton = tester.widget<ElevatedButton>(find.byKey(const Key('nextButton')));
    expect(enabledButton.enabled, isTrue);
  });

  testWidgets('Alias is generated automatically based on first name and first letter of last name', (WidgetTester tester) async {
    await tester.pumpWidget(createTestWidget());

    // Enter first name
    await tester.enterText(find.byKey(const Key('firstNameField')), 'Jan');
    await tester.pumpAndSettle();

    var aliasField = tester.widget<TextField>(find.byKey(const Key('aliasField')));
    expect(aliasField.controller?.text, 'Jan');

    // Enter last name
    await tester.enterText(find.byKey(const Key('lastNameField')), 'Kowalski');
    await tester.pumpAndSettle();

    aliasField = tester.widget<TextField>(find.byKey(const Key('aliasField')));
    expect(aliasField.controller?.text, 'Jan K.');
  });

  testWidgets('Color palette change updates avatar preview background', (WidgetTester tester) async {
    await tester.pumpWidget(createTestWidget());

    // Initial color should be grey
    var avatarPreview = tester.widget<Container>(find.byKey(const Key('avatarPreview')));
    expect(avatarPreview.color, Colors.grey);

    // Tap on the blue color option
    // Since we know the colors are red, green, blue, we can find the one that has blue color
    final blueOption = find.byWidgetPredicate((widget) =>
      widget is Container && widget.decoration is BoxDecoration && (widget.decoration as BoxDecoration).color == Colors.blue
    );

    await tester.tap(blueOption);
    await tester.pumpAndSettle();

    avatarPreview = tester.widget<Container>(find.byKey(const Key('avatarPreview')));
    expect(avatarPreview.color, Colors.blue);
  });

  testWidgets('DPA consent unblocks save button on Step 2', (WidgetTester tester) async {
    await tester.pumpWidget(createTestWidget());

    // Enter first name to enable next button
    await tester.enterText(find.byKey(const Key('firstNameField')), 'Jan');
    await tester.pumpAndSettle();

    // Tap Next button to go to Step 2
    await tester.tap(find.byKey(const Key('nextButton')));
    await tester.pumpAndSettle();

    // Now on step 2
    expect(find.text('Krok 2'), findsOneWidget);

    // Check save button is disabled initially
    final saveButtonFinder = find.byKey(const Key('saveButton'));
    expect(saveButtonFinder, findsOneWidget);
    var saveButton = tester.widget<ElevatedButton>(saveButtonFinder);
    expect(saveButton.enabled, isFalse);

    // Check DPA consent
    await tester.tap(find.byKey(const Key('dpaCheckbox')));
    await tester.pumpAndSettle();

    saveButton = tester.widget<ElevatedButton>(saveButtonFinder);
    expect(saveButton.enabled, isTrue);
  });
}

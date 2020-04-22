// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('e2e test | ', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('goto Accounts', () async {
      final bottomTabAccountBtn = find.byValueKey('accountTab');

      await driver.tap(bottomTabAccountBtn);
      await driver.waitFor(find.byType('AccountPage'));
    });

    test('fill input name', () async {
      final textField = find.byValueKey('textFormName');
      final exampleText = 'test@gmail.com';
      await driver.tap(textField); // acquire focus
      await driver.enterText(exampleText);
      await driver.waitFor(find.text(exampleText));
    });

    test('fill input height', () async {
      final textField = find.byValueKey('textFormHeight');
      final exampleText = '172';
      await driver.tap(textField); // acquire focus
      await driver.enterText(exampleText);
      await driver.waitFor(find.text(exampleText));
    });

    test('fill input current weight', () async {
      final textField = find.byValueKey('textFormCurrentWeight');
      final exampleText = '62';
      await driver.tap(textField); // acquire focus
      await driver.enterText(exampleText);
      await driver.waitFor(find.text(exampleText));
    });

    test('fill input goal weight', () async {
      final textField = find.byValueKey('textFormGoalWeight');
      final exampleText = '71';
      await driver.tap(textField); // acquire focus
      await driver.enterText(exampleText);
      await driver.waitFor(find.text(exampleText));
    });

    test('goto colories page', () async {
      final bottomTabColoriesBtn = find.byValueKey('coloriesTab');

      await driver.tap(bottomTabColoriesBtn);
      await driver.waitFor(find.byType('ColoriesPage'));
    });

    test('Show calc dialog and check result', () async {
      await driver.tap(find.byValueKey('showResult'));

      expect(await driver.getText(find.byValueKey('calcResult')), 'Результат: 20.96');
    });
  });
}

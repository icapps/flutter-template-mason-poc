import 'package:{{project_name}}/widget/general/styled/{{project_name}}_input_field.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../di/test_injectable.dart';
import '../../../util/test_util.dart';

void main() {
  setUp(() async => initTestInjectable());
  testWidgets('{{project_name.pascalCase()}}InputField with enabled true', (tester) async {
    final sut = {{project_name.pascalCase()}}InputField(
      onChanged: (value) {},
      enabled: true,
      hint: 'Hint text',
    );

    await TestUtil.loadWidgetWithText(tester, sut);
    await TestUtil.takeScreenshot(tester, '{{project_name}}_input_field_with_hint_and_enabled');
  });

  testWidgets('{{project_name.pascalCase()}}InputField with enabled false', (tester) async {
    final sut = {{project_name.pascalCase()}}InputField(
      onChanged: (value) {},
      enabled: false,
      hint: 'Hint text',
    );

    await TestUtil.loadWidgetWithText(tester, sut);
    await TestUtil.takeScreenshot(tester, '{{project_name}}_input_field_with_hint_and_disabled');
  });

  group('OnChanged', () {
    testWidgets('{{project_name.pascalCase()}}InputField with false value', (tester) async {
      String? newText;
      final sut = {{project_name.pascalCase()}}InputField(
        onChanged: (value) {
          newText = value;
        },
        enabled: true,
        hint: 'Hint text',
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_input_field_type_text_before');
      final finder = find.byType({{project_name.pascalCase()}}InputField);
      expect(finder, findsOneWidget);
      await tester.showKeyboard(finder);
      await tester.enterText(finder, 'Testing');
      await tester.pumpAndSettle();
      await TestUtil.takeScreenshot(tester, '{{project_name}}_input_field_type_text_after');
      expect(newText, 'Testing');
    });
  });
}

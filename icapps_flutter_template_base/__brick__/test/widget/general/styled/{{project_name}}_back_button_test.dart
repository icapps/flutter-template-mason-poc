import 'package:{{project_name}}/widget/general/styled/{{project_name}}_back_button.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../di/test_injectable.dart';
import '../../../util/test_util.dart';

void main() {
  setUp(() async => initTestInjectable());

  group('{{project_name.pascalCase()}}BackButton dark', () {
    testWidgets('{{project_name.pascalCase()}}BackButton dark initial state', (tester) async {
      final sut = {{project_name.pascalCase()}}BackButton.dark(onClick: () {});

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_back_button_dark');
    });

    testWidgets('{{project_name.pascalCase()}}BackButton dark initial state fullscreen', (tester) async {
      final sut = {{project_name.pascalCase()}}BackButton.dark(
        onClick: () {},
        fullScreen: true,
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_back_button_full_screen_dark');
    });

    testWidgets('{{project_name.pascalCase()}}BackButton dark click', (tester) async {
      var clicked = false;
      final sut = {{project_name.pascalCase()}}BackButton.dark(onClick: () {
        clicked = true;
      });

      await TestUtil.loadWidgetWithText(tester, sut);
      final finder = find.byType({{project_name.pascalCase()}}BackButton);
      expect(finder, findsOneWidget);
      await tester.tap(finder);
      await tester.pumpAndSettle();
      expect(clicked, true);
    });
  });

  group('{{project_name.pascalCase()}}BackButton light', () {
    testWidgets('{{project_name.pascalCase()}}BackButton light initial state', (tester) async {
      final sut = {{project_name.pascalCase()}}BackButton.light(onClick: () {});

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_back_button_light');
    });

    testWidgets('{{project_name.pascalCase()}}BackButton light initial state fullscreen', (tester) async {
      final sut = {{project_name.pascalCase()}}BackButton.light(
        onClick: () {},
        fullScreen: true,
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_back_button_full_screen_light');
    });

    testWidgets('{{project_name.pascalCase()}}BackButton light click', (tester) async {
      var clicked = false;
      final sut = {{project_name.pascalCase()}}BackButton.light(onClick: () {
        clicked = true;
      });

      await TestUtil.loadWidgetWithText(tester, sut);
      final finder = find.byType({{project_name.pascalCase()}}BackButton);
      expect(finder, findsOneWidget);
      await tester.tap(finder);
      await tester.pumpAndSettle();
      expect(clicked, true);
    });
  });
}

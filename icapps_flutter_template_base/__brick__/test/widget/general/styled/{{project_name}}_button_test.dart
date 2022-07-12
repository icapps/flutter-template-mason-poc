import 'package:flutter/material.dart';
import 'package:{{project_name}}/styles/theme_dimens.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_button.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../di/test_injectable.dart';
import '../../../util/test_util.dart';

void main() {
  setUp(() async => initTestInjectable());
  group('Android', () {
    testWidgets('{{project_name.pascalCase()}}Button initial state', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.android),
        child: {{project_name.pascalCase()}}Button(
          text: 'Hallokes',
          onClick: () {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_button_default_state_android');
    });

    testWidgets('{{project_name.pascalCase()}}Button initial state with height', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.android),
        child: {{project_name.pascalCase()}}Button(
          text: 'Hallokes',
          height: ThemeDimens.padding96,
          onClick: () {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_button_with_height_android');
    });

    testWidgets('{{project_name.pascalCase()}}Button initial state with key', (tester) async {
      const key = ValueKey('A-Testing-Key');
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.android),
        child: {{project_name.pascalCase()}}Button(
          text: 'Hallokes',
          key: key,
          onClick: () {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_button_with_key_android');
      final finder = find.byKey(key);
      expect(finder, findsOneWidget);
    });

    testWidgets('{{project_name.pascalCase()}}Button initial state is not enabled', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.android),
        child: {{project_name.pascalCase()}}Button(
          text: 'Hallokes',
          isEnabled: false,
          onClick: () {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_button_not_enabled_android');
    });

    group('Clicked', () {
      testWidgets('{{project_name.pascalCase()}}Button initial state with key', (tester) async {
        var clicked = false;
        final sut = Theme(
          data: ThemeData(platform: TargetPlatform.android),
          child: {{project_name.pascalCase()}}Button(
            text: 'Hallokes',
            onClick: () {
              clicked = true;
            },
          ),
        );

        await TestUtil.loadWidgetWithText(tester, sut);
        final finder = find.byType({{project_name.pascalCase()}}Button);
        expect(finder, findsOneWidget);
        await tester.tap(finder);
        await tester.pumpAndSettle();
        expect(clicked, true);
      });
    });
  });

  group('iOS', () {
    testWidgets('{{project_name.pascalCase()}}Button initial state', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.iOS),
        child: {{project_name.pascalCase()}}Button(
          text: 'Hallokes',
          onClick: () {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_button_default_state_ios');
    });

    testWidgets('{{project_name.pascalCase()}}Button initial state with height', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.iOS),
        child: {{project_name.pascalCase()}}Button(
          text: 'Hallokes',
          height: ThemeDimens.padding96,
          onClick: () {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_button_with_height_ios');
    });

    testWidgets('{{project_name.pascalCase()}}Button initial state with key', (tester) async {
      const key = ValueKey('A-Testing-Key');
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.iOS),
        child: {{project_name.pascalCase()}}Button(
          text: 'Hallokes',
          key: key,
          onClick: () {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_button_with_key_ios');
      final finder = find.byKey(key);
      expect(finder, findsOneWidget);
    });

    testWidgets('{{project_name.pascalCase()}}Button initial state is not enabled', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.iOS),
        child: {{project_name.pascalCase()}}Button(
          text: 'Hallokes',
          isEnabled: false,
          onClick: () {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_button_not_enabled_ios');
    });

    group('Clicked', () {
      testWidgets('{{project_name.pascalCase()}}Button initial state with key', (tester) async {
        var clicked = false;
        final sut = Theme(
          data: ThemeData(platform: TargetPlatform.iOS),
          child: {{project_name.pascalCase()}}Button(
            text: 'Hallokes',
            onClick: () {
              clicked = true;
            },
          ),
        );

        await TestUtil.loadWidgetWithText(tester, sut);
        final finder = find.byType({{project_name.pascalCase()}}Button);
        expect(finder, findsOneWidget);
        await tester.tap(finder);
        await tester.pumpAndSettle();
        expect(clicked, true);
      });
    });
  });
}

import 'package:flutter/material.dart';
import 'package:{{project_name}}/widget/general/styled/{{project_name}}_switch.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../di/test_injectable.dart';
import '../../../util/test_util.dart';

void main() {
  setUp(() async => initTestInjectable());
  group('Android', () {
    testWidgets('{{project_name.pascalCase()}}Switch with false value', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.android),
        child: {{project_name.pascalCase()}}Switch(
          value: false,
          onChanged: (value) {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_switch_false_android');
    });

    testWidgets('{{project_name.pascalCase()}}Switch with true value', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.android),
        child: {{project_name.pascalCase()}}Switch(
          value: true,
          onChanged: (value) {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_switch_true_android');
    });

    group('OnChanged', () {
      testWidgets('{{project_name.pascalCase()}}Switch onChanged from value true', (tester) async {
        bool? newValue;
        final sut = Theme(
          data: ThemeData(platform: TargetPlatform.android),
          child: {{project_name.pascalCase()}}Switch(
            value: true,
            onChanged: (value) {
              newValue = value;
            },
          ),
        );

        await TestUtil.loadWidgetWithText(tester, sut);
        final finder = find.byType({{project_name.pascalCase()}}Switch);
        expect(finder, findsOneWidget);
        await tester.tap(finder);
        await tester.pumpAndSettle();
        expect(newValue, false);
      });
      testWidgets('{{project_name.pascalCase()}}Switch onChanged from value false', (tester) async {
        bool? newValue;
        final sut = Theme(
          data: ThemeData(platform: TargetPlatform.android),
          child: {{project_name.pascalCase()}}Switch(
            value: false,
            onChanged: (value) {
              newValue = value;
            },
          ),
        );

        await TestUtil.loadWidgetWithText(tester, sut);
        final finder = find.byType({{project_name.pascalCase()}}Switch);
        expect(finder, findsOneWidget);
        await tester.tap(finder);
        await tester.pumpAndSettle();
        expect(newValue, true);
      });
    });
  });

  group('iOS', () {
    testWidgets('{{project_name.pascalCase()}}Switch with false value', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.iOS),
        child: {{project_name.pascalCase()}}Switch(
          value: false,
          onChanged: (value) {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_switch_false_ios');
    });

    testWidgets('{{project_name.pascalCase()}}Switch with true value', (tester) async {
      final sut = Theme(
        data: ThemeData(platform: TargetPlatform.iOS),
        child: {{project_name.pascalCase()}}Switch(
          value: true,
          onChanged: (value) {},
        ),
      );

      await TestUtil.loadWidgetWithText(tester, sut);
      await TestUtil.takeScreenshot(tester, '{{project_name}}_switch_true_ios');
    });

    group('OnChanged', () {
      testWidgets('{{project_name.pascalCase()}}Switch onChanged from value true', (tester) async {
        bool? newValue;
        final sut = Theme(
          data: ThemeData(platform: TargetPlatform.iOS),
          child: {{project_name.pascalCase()}}Switch(
            value: true,
            onChanged: (value) {
              newValue = value;
            },
          ),
        );

        await TestUtil.loadWidgetWithText(tester, sut);
        final finder = find.byType({{project_name.pascalCase()}}Switch);
        expect(finder, findsOneWidget);
        await tester.tap(finder);
        await tester.pumpAndSettle();
        expect(newValue, false);
      });
      testWidgets('{{project_name.pascalCase()}}Switch onChanged from value false', (tester) async {
        bool? newValue;
        final sut = Theme(
          data: ThemeData(platform: TargetPlatform.iOS),
          child: {{project_name.pascalCase()}}Switch(
            value: false,
            onChanged: (value) {
              newValue = value;
            },
          ),
        );

        await TestUtil.loadWidgetWithText(tester, sut);
        final finder = find.byType({{project_name.pascalCase()}}Switch);
        expect(finder, findsOneWidget);
        await tester.tap(finder);
        await tester.pumpAndSettle();
        expect(newValue, true);
      });
    });
  });
}

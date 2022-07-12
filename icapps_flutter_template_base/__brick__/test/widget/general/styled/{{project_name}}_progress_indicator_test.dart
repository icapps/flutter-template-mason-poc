import 'package:{{project_name}}/widget/general/styled/{{project_name}}_progress_indicator.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../di/test_injectable.dart';
import '../../../util/test_util.dart';

void main() {
  setUp(() async => initTestInjectable());

  testWidgets('{{project_name.pascalCase()}}ProgressIndicator initial state', (tester) async {
    const sut = {{project_name.pascalCase()}}ProgressIndicator.light();

    await TestUtil.loadWidgetWithText(tester, sut);
    await TestUtil.takeScreenshot(tester, '{{project_name}}_progress_indicator_light');
  });

  testWidgets('{{project_name.pascalCase()}}ProgressIndicator initial state dark', (tester) async {
    const sut = {{project_name.pascalCase()}}ProgressIndicator.dark();

    await TestUtil.loadWidgetWithText(tester, sut);
    await TestUtil.takeScreenshot(tester, '{{project_name}}_progress_indicator_dark');
  });
}

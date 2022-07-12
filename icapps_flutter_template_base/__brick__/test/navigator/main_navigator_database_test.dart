import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:{{project_name}}/database/{{project_name}}_database.dart';
import 'package:{{project_name}}/navigator/main_navigator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

import '../di/test_injectable.dart';
import '../screen/seed.dart';
import '../util/test_util.dart';

void main() {
  setUp(() async {
    await initTestInjectable();
  });

  testWidgets('Test main navigator widget database', (tester) async {
    seedGlobalViewModel();
    final key = GlobalKey<MainNavigatorWidgetState>();
    final sut = MainNavigatorWidget(key: key);
    final db = GetIt.I<{{project_name.pascalCase()}}Database>();
    await TestUtil.loadScreen(tester, sut);
    key.currentState!.goToDatabase(db);
    await tester.pumpAndSettle();
    expect(find.byType(DriftDbViewer), findsOneWidget);
  });
}

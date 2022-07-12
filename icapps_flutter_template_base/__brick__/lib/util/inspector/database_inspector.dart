import 'package:drift_inspector/drift_inspector.dart';
import 'package:flutter/foundation.dart';
import 'package:{{project_name}}/database/{{project_name}}_database.dart';
import 'package:get_it/get_it.dart';

Future<void> addDatabaseInspector() async {
  if (!kDebugMode) return;

  final database = GetIt.I<{{project_name.pascalCase()}}Database>();

  final driftInspectorBuilder = DriftInspectorBuilder()
    ..bundleId = '{{project_package_name}}'
    ..icon = 'flutter'
    ..addDatabase('{{project_name}}', database);

  final inspector = driftInspectorBuilder.build();

  await inspector.start();

  // ignore: avoid_print
  print('Started drift inspector');
}

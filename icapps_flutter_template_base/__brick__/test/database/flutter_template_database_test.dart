import 'package:{{project_name}}/database/{{project_name}}_database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

import '../di/test_injectable.dart';

void main() {
  late {{project_name.pascalCase()}}Database sut;

  setUp(() async {
    await initTestInjectable();
    sut = GetIt.I();
  });

  test('{{project_name.pascalCase()}}Database should have the correct version', () {
    expect(sut.schemaVersion, 1);
  });

  test('{{project_name.pascalCase()}}Database should delete all tables', () async {
    final resultTodos1 = await sut.select(sut.dbTodoTable).get();
    expect(resultTodos1.isEmpty, true);

    await sut.into(sut.dbTodoTable).insert(DbTodoTableCompanion.insert(title: 'todo1', completed: true));
    await sut.into(sut.dbTodoTable).insert(DbTodoTableCompanion.insert(title: 'todo2', completed: true));
    await sut.into(sut.dbTodoTable).insert(DbTodoTableCompanion.insert(title: 'todo3', completed: true));

    final resultTodos2 = await sut.select(sut.dbTodoTable).get();
    expect(resultTodos2.isEmpty, false);
    expect(resultTodos2.length, 3);

    await sut.deleteAllData();

    final resultTodos3 = await sut.select(sut.dbTodoTable).get();
    expect(resultTodos3.isEmpty, true);
  });
}

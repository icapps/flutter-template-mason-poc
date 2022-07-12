import 'package:drift/drift.dart';
import 'package:{{project_name}}/model/database/todo/db_todo_table.dart';

part '{{project_name}}_database.g.dart';

@DriftDatabase(tables: [
  DbTodoTable,
])
class {{project_name.pascalCase()}}Database extends _${{project_name.pascalCase()}}Database {
  {{project_name.pascalCase()}}Database(QueryExecutor db) : super(db);

  {{project_name.pascalCase()}}Database.connect(DatabaseConnection connection) : super.connect(connection);

  @override
  int get schemaVersion => 1;

  Future<void> deleteAllData() {
    return transaction(() async {
      for (final table in allTables) {
        await delete<Table, dynamic>(table).go();
      }
    });
  }
}

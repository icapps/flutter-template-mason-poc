import 'package:{{project_name}}/di/environments.dart';
import 'package:{{project_name}}/model/webservice/todo/todo.dart';
import 'package:{{project_name}}/styles/theme_durations.dart';
import 'package:{{project_name}}/util/api/dummy_api_util.dart';
import 'package:{{project_name}}/webservice/todo/todo_service.dart';
import 'package:injectable/injectable.dart';

@dummy
@Singleton(as: TodoService)
class TodoDummyService extends TodoService {
  final todos = <Todo>[];

  @override
  Future<List<Todo>> getTodos() async {
    await Future<void>.delayed(ThemeDurations.demoNetworkCallDuration());
    if (todos.isEmpty) {
      final result = await DummyApiUtil.getResponse<List<dynamic>>('todos');
      final newTodos = result.map((dynamic item) => Todo.fromJson(item as Map<String, dynamic>)).toList();
      todos.addAll(newTodos);
    }
    return todos;
  }
}

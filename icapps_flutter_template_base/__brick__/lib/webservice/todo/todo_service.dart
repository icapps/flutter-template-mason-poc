import 'package:{{project_name}}/model/webservice/todo/todo.dart';

// ignore: one_member_abstracts
abstract class TodoService {
  Future<List<Todo>> getTodos();
}

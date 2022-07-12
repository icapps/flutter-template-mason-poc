import 'package:dio/dio.dart';
import 'package:{{project_name}}/model/webservice/todo/todo.dart';
import 'package:{{project_name}}/webservice/todo/todo_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part '{{feature_name}}_webservice.g.dart';

abstract class {{feature_name.pascalCase()}}Service {}

@dev
@prod
@Singleton(as: {{feature_name.pascalCase()}}Service)
@RestApi()
abstract class {{feature_name.pascalCase()}}WebService extends {{feature_name.pascalCase()}}Service {
  @factoryMethod
  factory {{feature_name.pascalCase()}}WebService(Dio dio) = _{{feature_name.pascalCase()}}WebService;
}

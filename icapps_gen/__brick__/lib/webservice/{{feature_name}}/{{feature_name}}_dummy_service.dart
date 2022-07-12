import 'package:{{project_name}}/di/environments.dart';
import 'package:{{project_name}}/webservice/{{feature_name}}/{{feature_name}}_service.dart';
import 'package:injectable/injectable.dart';

@dummy
@Singleton(as: {{feature_name.pascalCase()}}Service)
class {{feature_name.pascalCase()}}DummyService extends {{feature_name.pascalCase()}}Service {}

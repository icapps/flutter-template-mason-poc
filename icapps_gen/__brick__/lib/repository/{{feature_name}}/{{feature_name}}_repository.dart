import 'package:{{project_name}}/webservice/{{feature_name}}/{{feature_name}}_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
abstract class {{feature_name.pascalCase()}}Repository {
  @factoryMethod
  factory {{feature_name.pascalCase()}}Repository({{feature_name.pascalCase()}}Service service) = _{{feature_name.pascalCase}}Repository;
}

class _{{feature_name.pascalCase()}}Repository implements {{feature_name.pascalCase()}}Repository {
  final {{feature_name.pascalCase()}}Service _{{feature_name.camelCase()}}Service;

  _{{feature_name.pascalCase()}}Repository(this._{{feature_name.camelCase()}}Service);
}

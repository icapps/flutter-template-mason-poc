import 'package:{{project_name}}/repository/{{feature_name}}/{{feature_name}}_repository.dart';
import 'package:icapps_architecture/icapps_architecture.dart';
import 'package:injectable/injectable.dart';

@injectable
class {{feature_name.pascalCase()}}ViewModel with ChangeNotifierEx {
  final {{feature_name.pascalCase()}}Repository _{{feature_name.camelCase()}}Repo;

  late {{feature_name.pascalCase()}}ViewNavigator _navigator;

  {{feature_name.pascalCase()}}ViewModel(this._{{feature_name.camelCase()}}Repo);

  Future<void> init({{feature_name.pascalCase()}}ViewNavigator navigator) async {
    _navigator = navigator;
  }
}

abstract class {{feature_name.pascalCase()}}ViewNavigator {}

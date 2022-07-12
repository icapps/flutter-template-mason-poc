import 'package:{{project_name}}/navigator/mixin/back_navigator.dart';
import 'package:{{project_name}}/util/license.dart';
import 'package:icapps_architecture/icapps_architecture.dart';
import 'package:injectable/injectable.dart';

@injectable
class LicenseViewModel with ChangeNotifierEx {
  late LicenseNavigator _navigator;

  List<License> get licenses => LicenseUtil.getLicenses();

  Future<void> init(LicenseNavigator navigator) async {
    _navigator = navigator;
  }

  void onBackClicked() => _navigator.goBack<void>();
}

abstract class LicenseNavigator with BackNavigator {}

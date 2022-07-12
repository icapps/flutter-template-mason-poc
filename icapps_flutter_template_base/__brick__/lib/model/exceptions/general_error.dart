import 'package:dio/dio.dart';
import 'package:{{project_name}}/util/locale/localization_keys.dart';
import 'package:icapps_architecture/icapps_architecture.dart';

class GeneralNetworkError extends NetworkError {
  GeneralNetworkError(DioError dioError) : super(dioError);

  @override
  String getLocalizedKey() => LocalizationKeys.errorGeneral;

  @override
  String? get getErrorCode => null;
}

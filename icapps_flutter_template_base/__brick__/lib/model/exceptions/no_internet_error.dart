import 'package:dio/dio.dart';
import 'package:{{project_name}}/util/locale/localization_keys.dart';
import 'package:icapps_architecture/icapps_architecture.dart';

class NoInternetError extends NetworkError {
  NoInternetError(DioError dioError) : super(dioError);

  @override
  String getLocalizedKey() => LocalizationKeys.errorNoNetwork;

  @override
  String? get getErrorCode => null;
}

class NoNetworkError extends Error {}

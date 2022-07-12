import 'package:dio/dio.dart';
import 'package:{{project_name}}/repository/secure_storage/auth/auth_storage.dart';
import 'package:{{project_name}}/util/interceptor/network_auth_interceptor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';

import '../../di/test_injectable.dart';
import '../test_extensions.dart';

void main() {
  late NetworkAuthInterceptor sut;
  late AuthStorage authStorage;

  setUp(() async {
    await initTestInjectable();
    authStorage = GetIt.I();
    sut = NetworkAuthInterceptor(authStorage);
  });

  test('NetworkTokenInterceptor test authenticate call', () async {
    final request = RequestOptions(path: 'login');
    final dynamic result = await sut.onRequest(request);
    expect(result, request);
    verifyZeroInteractions(authStorage);
  });
  test('NetworkTokenInterceptor test other call', () async {
    const accessToken = 'accessToken-123ewiojfdc4';
    when(authStorage.getAccessToken()).thenAnswer((_) async => accessToken);

    final request = RequestOptions(path: '/some-other-api-call');
    final dynamic result = await sut.onRequest(request);
    expect(result, request);
    // ignore: avoid_as
    expect((result as RequestOptions).headers['Authorization'], 'Bearer $accessToken');
    verify(authStorage.getAccessToken()).calledOnce();
    verifyNoMoreInteractions(authStorage);
  });
}

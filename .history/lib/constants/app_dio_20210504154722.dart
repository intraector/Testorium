import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:one_click/constants/app_settings.dart';

final _logger = Logger();

const _timeout = 5000;
final BaseOptions _options = BaseOptions(
  baseUrl: backendUrl,
  connectTimeout: _timeout,
  receiveTimeout: _timeout,
  sendTimeout: _timeout,
);

Dio appDio(Type runtimeType) {
  return Dio(_options)
    ..interceptors.add(
      InterceptorsWrapper(
        onError: (error) {
          _logger.i('Error in $runtimeType | ${error?.message} ${error?.response}', error);
        },
      ),
    );
}

Dio appDioWithAuth(Type runtimeType, {@required String token}) {
  final _optionsWithAuth = BaseOptions(
    baseUrl: backendUrl,
    connectTimeout: _timeout,
    receiveTimeout: _timeout,
    sendTimeout: _timeout,
    headers: {'Authorization': 'OCA $token'},
  );
  return Dio(_optionsWithAuth)
    ..interceptors.add(
      InterceptorsWrapper(
        onError: (error) {
          _logger.i('Error in $runtimeType | ${error?.message} ${error?.response}', error);
        },
      ),
    );
}

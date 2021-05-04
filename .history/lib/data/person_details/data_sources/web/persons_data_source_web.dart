import 'dart:async';

import 'package:testorium/constants/app_settings.dart';
import 'package:testorium/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'persons_data_source_web.freezed.dart';

class PersonsDataSourceWeb {
  PersonsDataSourceWeb() {
    _dio = Dio(_options);
  }

  final BaseOptions _options = BaseOptions(
    baseUrl: urlProd,
    connectTimeout: 5000,
    receiveTimeout: 5000,
    sendTimeout: 5000,
  );

  Dio _dio;
  final _logger = Logger();

  Stream<StatePersonsDataSourceWeb> getPersonsList() {
    StreamController<StatePersonsDataSourceWeb> output;
    void doWork() async {
      output.sink.add(StatePersonsDataSourceWeb.loadInProgress(0.0));
      try {
        final response = await _dio.get(
          '/api/character?page=1',
          onReceiveProgress: (recieved, total) => output.sink.add(
            StatePersonsDataSourceWeb.loadInProgress(recieved / total * 100),
          ),
        );
        output.sink.add(StatePersonsDataSourceWeb.data(
          statusCode: response.statusCode,
          statusMsg: response.statusMessage,
          data: response.data,
          extra: response.extra,
        ));
      } on DioError catch (error, stackTrace) {
        output.sink.add(_generateErrorState(error.response, error.message));
        _logger.e(
          "Error in $runtimeType | dio error: ${error.response}",
          error,
          stackTrace,
        );
      } catch (error, stackTrace) {
        output.add(StatePersonsDataSourceWeb.error(
          msg: S.current.errorGeneral,
          data: error,
        ));
        _logger.e("Error in $runtimeType ", error, stackTrace);
      }
      output.close();
    }

    output = StreamController<StatePersonsDataSourceWeb>(onListen: doWork);
    return output.stream;
  }
}

StatePersonsDataSourceWeb _generateErrorState(Response response, [String reasonMsg]) {
  if (response == null) return StatePersonsDataSourceWeb.error(msg: S.current.errorGeneral);
  String _msg;
  switch (response.statusCode) {
    default:
      {
        _msg = S.current.errorGeneral;
      }
  }
  return StatePersonsDataSourceWeb.error(
    msg: _msg,
    statusCode: response.statusCode,
    statusMsg: response.statusMessage,
    reasonMsg: reasonMsg,
    data: response.data,
    extra: response.extra,
  );
}

@freezed
abstract class StatePersonsDataSourceWeb with _$StatePersonsDataSourceWeb {
  const factory StatePersonsDataSourceWeb.loadInProgress(double progress) = _LoadInProgress;
  const factory StatePersonsDataSourceWeb.data({
    int statusCode,
    @Default('') String statusMsg,
    data,
    Map<String, dynamic> extra,
  }) = _Data;

  const factory StatePersonsDataSourceWeb.error({
    int statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    data,
    Map<String, dynamic> extra,
  }) = _Error;
}

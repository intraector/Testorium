import 'dart:async';

import 'package:testorium/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'persons_data_source_web.freezed.dart';

class PersonsDataSourceWeb {
  PersonsDataSourceWeb() {
    dio = Dio(options);
  }

  BaseOptions options = BaseOptions(
    baseUrl: 'https://rickandmortyapi.com',
    connectTimeout: 5000,
    receiveTimeout: 5000,
    sendTimeout: 5000,
  );

  Dio dio;
  var _logger = Logger();

  Stream<StateAuthStatusDataSourceWeb> checkStatus() {
    StreamController<StateAuthStatusDataSourceWeb> output;
    void doWork() async {
      output.sink.add(StateAuthStatusDataSourceWeb.loadInProgress(0.0));
      try {
        Response response = await dio.get(
          '/api/character?page=1',
          onReceiveProgress: (sent, total) => output.sink.add(
            StateAuthStatusDataSourceWeb.loadInProgress(sent / total),
          ),
        );
        output.sink.add(StateAuthStatusDataSourceWeb.data(
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
        output.add(StateAuthStatusDataSourceWeb.error(
          msg: S.current.errorGeneral,
          data: error,
        ));
        _logger.e("Error in $runtimeType ", error, stackTrace);
      }
      output.close();
    }

    output = StreamController<StateAuthStatusDataSourceWeb>(onListen: () => doWork());
    return output.stream;
  }
}

StateAuthStatusDataSourceWeb _generateErrorState(Response response, [String reasonMsg]) {
  if (response == null) return StateAuthStatusDataSourceWeb.error(msg: S.current.errorGeneral);
  String _msg;
  switch (response.statusCode) {
    default:
      {
        _msg = S.current.errorGeneral;
      }
  }
  return StateAuthStatusDataSourceWeb.error(
    msg: _msg,
    statusCode: response.statusCode,
    statusMsg: response.statusMessage,
    reasonMsg: reasonMsg,
    data: response.data,
    extra: response.extra,
  );
}

@freezed
abstract class StateAuthStatusDataSourceWeb with _$StateAuthStatusDataSourceWeb {
  const factory StateAuthStatusDataSourceWeb.loadInProgress(double progress) = _LoadInProgress;
  const factory StateAuthStatusDataSourceWeb.data({
    int statusCode,
    @Default('') String statusMsg,
    data,
    Map<String, dynamic> extra,
  }) = _Data;

  const factory StateAuthStatusDataSourceWeb.error({
    int statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    data,
    Map<String, dynamic> extra,
  }) = _Error;
}

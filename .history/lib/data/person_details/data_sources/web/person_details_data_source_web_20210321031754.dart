import 'dart:async';

import 'package:Testorium/constants/app_settings.dart';
import 'package:Testorium/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'person_details_data_source_web.freezed.dart';

class PersonDetailsDataSourceWeb {
  PersonDetailsDataSourceWeb() {
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

  Stream<StatePersonDetailsDataSourceWeb> getPersonDetails(int id) {
    StreamController<StatePersonDetailsDataSourceWeb> output;
    void doWork() async {
      if (id == null) {
        output.add(
          StatePersonDetailsDataSourceWeb.error(
            msg: S.current.errorGeneral,
            reasonMsg: 'id is null',
          ),
        );
        _logger.e("Error in $runtimeType | id is null");
        output.close();
        return;
      }
      output.sink.add(StatePersonDetailsDataSourceWeb.loadInProgress(0.0));
      try {
        final response = await _dio.get(
          '/api/character?$id',
          onReceiveProgress: (recieved, total) => output.sink.add(
            StatePersonDetailsDataSourceWeb.loadInProgress(recieved / total * 100),
          ),
        );
        output.sink.add(
          StatePersonDetailsDataSourceWeb.data(
            statusCode: response.statusCode,
            statusMsg: response.statusMessage,
            data: response.data,
            extra: response.extra,
          ),
        );
      } on DioError catch (error, stackTrace) {
        output.sink.add(_generateErrorState(error.response, error.message));
        _logger.e(
          "Error in $runtimeType | dio error: ${error.response}",
          error,
          stackTrace,
        );
      } catch (error, stackTrace) {
        output.add(StatePersonDetailsDataSourceWeb.error(
          msg: S.current.errorGeneral,
          data: error,
        ));
        _logger.e("Error in $runtimeType ", error, stackTrace);
      }
      output.close();
    }

    output = StreamController<StatePersonDetailsDataSourceWeb>(onListen: doWork);
    return output.stream;
  }
}

StatePersonDetailsDataSourceWeb _generateErrorState(Response response, [String reasonMsg]) {
  if (response == null) return StatePersonDetailsDataSourceWeb.error(msg: S.current.errorGeneral);
  String _msg;
  switch (response.statusCode) {
    default:
      {
        _msg = S.current.errorGeneral;
      }
  }
  return StatePersonDetailsDataSourceWeb.error(
    msg: _msg,
    statusCode: response.statusCode,
    statusMsg: response.statusMessage,
    reasonMsg: reasonMsg,
    data: response.data,
    extra: response.extra,
  );
}

@freezed
abstract class StatePersonDetailsDataSourceWeb with _$StatePersonDetailsDataSourceWeb {
  const factory StatePersonDetailsDataSourceWeb.loadInProgress(double progress) = _LoadInProgress;
  const factory StatePersonDetailsDataSourceWeb.data({
    int statusCode,
    @Default('') String statusMsg,
    data,
    Map<String, dynamic> extra,
  }) = _Data;

  const factory StatePersonDetailsDataSourceWeb.error({
    int statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    data,
    Map<String, dynamic> extra,
  }) = _Error;
}

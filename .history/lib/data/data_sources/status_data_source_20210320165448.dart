import 'dart:async';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'status_data_source.freezed.dart';

class StatusDataSource {
  StatusDataSource() {
    dio = Dio(options);
  }

  BaseOptions options = BaseOptions(
    baseUrl: 'https://rickandmortyapi.com',
    connectTimeout: 10000,
    receiveTimeout: 10000,
    sendTimeout: 10000,
    // headers: {"Accept": "application/json"},
  );

  Dio dio;
  var _logger = Logger();

  Stream<StateAuthStatusDataSourceWeb> checkStatus(String token) {
    StreamController<StateAuthStatusDataSourceWeb> output;
    void doWork() async {
      output.sink.add(StateAuthStatusDataSourceWeb.loadInProgress(0.0));
      Map<String, dynamic> formMap = {'token': token};
      var data = FormData.fromMap(formMap);
      try {
        Response response = await dio.post(
          '/application/auth-check/',
          data: data,
          onSendProgress: (sent, total) {
            output.sink.add(StateAuthStatusDataSourceWeb.loadInProgress(sent / total));
          },
        );
        if (response?.statusCode == 200) {
          output.sink.add(StateAuthStatusDataSourceWeb.authorized(
            statusCode: response.statusCode,
            statusMsg: response.statusMessage,
            data: response.data,
            extra: response.extra,
          ));
        } else if (response?.statusCode == 401) {
          output.sink.add(StateAuthStatusDataSourceWeb.notAuthorized(
            statusCode: response.statusCode,
            statusMsg: response.statusMessage,
            data: response.data,
            extra: response.extra,
          ));
        } else {
          output.sink.add(_generateErrorState(response));
        }
      } on DioError catch (error, stackTrace) {
        // output.sink.add(
        // StateAuthStatusDataSourceWeb.error(msg: S.current.errorGeneral, data: error.response));
        print('---------- {error.response} : ${error.response}');
        if (error?.response?.statusCode == 401) {
          output.sink.add(StateAuthStatusDataSourceWeb.notAuthorized(
            statusCode: error.response.statusCode,
            statusMsg: error.response.statusMessage,
            data: error.response.data,
            extra: error.response.extra,
          ));
        } else {
          output.sink.add(_generateErrorState(error.response));
          _logger.e("Error in $runtimeType | dio error: ${error.response}", error, stackTrace);
        }
      } catch (error, stackTrace) {
        output.add(StateAuthStatusDataSourceWeb.error(msg: S.current.errorGeneral, data: error));
        _logger.e("Error in $runtimeType ", error, stackTrace);
      }
      output.close();
    }

    output = StreamController<StateAuthStatusDataSourceWeb>(onListen: () => doWork());
    return output.stream;
  }

  StateAuthStatusDataSourceWeb _generateErrorState(Response response) {
    if (response == null) return StateAuthStatusDataSourceWeb.error(msg: S.current.errorGeneral);
    String _msg;
    switch (response.statusCode) {
      case 200:
        {
          _msg = S.current.errorGeneral;
        }
        break;
      case 500:
        {
          _msg = S.current.errorGeneral;
        }
        break;
      case 401:
        {
          _msg = S.current.authStatusNotAuthorized;
        }
        break;
      case 403:
        {
          _msg = S.current.authStatusWrongToken;
        }
        break;
      case 406:
        {
          _msg = S.current.authStatusWrongToken;
        }
        break;

      default:
        {
          _msg = S.current.errorGeneral;
        }
    }
    return StateAuthStatusDataSourceWeb.error(
      msg: _msg,
      statusCode: response.statusCode,
      statusMsg: response.statusMessage,
      data: response.data,
      extra: response.extra,
    );
  }
}

@freezed
abstract class StateAuthStatusDataSourceWeb with _$StateAuthStatusDataSourceWeb {
  const factory StateAuthStatusDataSourceWeb.loadInProgress(double progress) = _Progress;
  const factory StateAuthStatusDataSourceWeb.authorized({
    int statusCode,
    @Default('') String statusMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Autorized;
  const factory StateAuthStatusDataSourceWeb.notAuthorized({
    int statusCode,
    @Default('') String statusMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _NotAutorized;
  const factory StateAuthStatusDataSourceWeb.error({
    int statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Error;
}

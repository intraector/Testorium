import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
part 'get_news.freezed.dart';
part 'generate_error_state.dart';

class NewsCommandGetNews extends Cubit<StateNewsCommandGetNews> {
  NewsCommandGetNews({int id}) : super(const StateNewsCommandGetNews.loadInProgress(0.0)) {
    _run(id: id);
  }

  final _logger = Logger();

  Future<void> _run({
    int id,
  }) async {
    emit(const StateNewsCommandGetNews.loadInProgress(0.0));
    try {
      final response = await appDio(runtimeType).get(
        '/application/news/${id ?? ''}',
        onReceiveProgress: (recieved, total) {
          emit(StateNewsCommandGetNews.loadInProgress(recieved / total));
        },
      );
      if (response?.statusCode == 200) {
        if (response.data is List) {
          var _events =
              response.data.map<News>((item) => Convert.mapToNews(item, url: backendUrl)).toList();
          emit(StateNewsCommandGetNews.data(_events));
        } else if (response.data is Map) {
          var _event = Convert.mapToNews(response.data, url: backendUrl);
          emit(StateNewsCommandGetNews.data([_event]));
        } else {
          _logger.e("Error in $runtimeType | data is ${response.data.runtimeType}");
          emit(StateNewsCommandGetNews.error(message: S.current.errorGeneral));
        }
      } else {
        var _state = _generateErrorState(response);
        _logger.i('Error in $runtimeType | $_state');
        emit(_state);
      }
    } on DioError catch (error) {
      emit(_generateErrorState(error.response));
    } catch (error, stackTrace) {
      _logger.e('Error in $runtimeType | $error', error, stackTrace);
      emit(_generateErrorState(null));
    }
  }
}

@freezed
abstract class StateNewsCommandGetNews with _$StateNewsCommandGetNews {
  const factory StateNewsCommandGetNews.loadInProgress(double progress) = _LoadInProgress;
  const factory StateNewsCommandGetNews.data(List<News> list) = _Data;
  const factory StateNewsCommandGetNews.error({
    int statusCode,
    @Default('') String message,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Error;
}

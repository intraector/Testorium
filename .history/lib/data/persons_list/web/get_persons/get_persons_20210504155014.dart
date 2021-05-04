import 'dart:async';

import 'package:testorium/constants/app_dio.dart';
import 'package:testorium/core/models/person.dart';
import 'package:testorium/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
part 'get_persons.freezed.dart';

part 'generate_error_state.dart';

class NewsCommandGetNews extends Cubit<StateCommandGetPersons> {
  NewsCommandGetNews({int id}) : super(const StateCommandGetPersons.loadInProgress(0.0)) {
    _run(id: id);
  }

  final _logger = Logger();

  Future<void> _run({
    int id,
  }) async {
    emit(const StateCommandGetPersons.loadInProgress(0.0));
    try {
      final response = await appDio(runtimeType).get(
        '/api/character?page=1'${id ?? ''}',
        onReceiveProgress: (recieved, total) {
          emit(StateCommandGetPersons.loadInProgress(recieved / total));
        },
      );
      if (response?.statusCode == 200) {
        if (response.data is List) {
          var _events = response.data.map<Person>((item) => Person.fromJson(item)).toList();
          emit(StateCommandGetPersons.data(_events));
        } else if (response.data is Map) {
          var _event = Person.fromJson(response.data);
          emit(StateCommandGetPersons.data([_event]));
        } else {
          _logger.e("Error in $runtimeType | data is ${response.data.runtimeType}");
          emit(StateCommandGetPersons.error(message: S.current.errorGeneral));
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
abstract class StateCommandGetPersons with _$StateCommandGetPersons {
  const factory StateCommandGetPersons.loadInProgress(double progress) = _LoadInProgress;
  const factory StateCommandGetPersons.data(List<Person> list) = _Data;
  const factory StateCommandGetPersons.error({
    int statusCode,
    @Default('') String message,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Error;
}

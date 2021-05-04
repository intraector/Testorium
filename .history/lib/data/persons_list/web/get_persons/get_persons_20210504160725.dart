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

class CommandGetPersons extends Cubit<StateCommandGetPersonDetails> {
  CommandGetPersons() : super(const StateCommandGetPersonDetails.loadInProgress(0.0)) {
    _run();
  }

  final _logger = Logger();

  Future<void> _run() async {
    try {
      final response = await appDio(runtimeType).get(
        '/api/character?$id',
        onReceiveProgress: (recieved, total) {
          emit(StateCommandGetPersonDetails.loadInProgress(recieved / total));
        },
      );
      if (response?.statusCode == 200) {
        if (response.data is List) {
          var _persons = response.data.map<Person>((item) => Person.fromJson(item)).toList();
          emit(StateCommandGetPersonDetails.data(_persons));
        } else {
          _logger.e("Error in $runtimeType | data is ${response.data.runtimeType}");
          emit(StateCommandGetPersonDetails.error(message: S.current.errorGeneral));
        }
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
abstract class StateCommandGetPersonDetails with _$StateCommandGetPersonDetails {
  const factory StateCommandGetPersonDetails.loadInProgress(double progress) = _LoadInProgress;
  const factory StateCommandGetPersonDetails.data(List<Person> list) = _Data;
  const factory StateCommandGetPersonDetails.error({
    int statusCode,
    @Default('') String message,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Error;
}

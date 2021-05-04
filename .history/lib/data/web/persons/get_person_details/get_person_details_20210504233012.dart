import 'dart:async';

import 'package:Testorium/common/app_dio.dart';
import 'package:Testorium/dto/person/person.dart';
import 'package:Testorium/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
part 'get_person_details.freezed.dart';

part 'generate_error_state.dart';

class CommandGetPersonDetails extends Cubit<StateCommandGetPersonDetails> {
  CommandGetPersonDetails(int id)
      : super(
          const StateCommandGetPersonDetails.loadInProgress(0.0),
        ) {
    _run(id);
  }

  final _logger = Logger();

  Future<void> _run(int id) async {
    try {
      final response = await appDio(runtimeType).get(
        '/api/character?$id',
        onReceiveProgress: (recieved, total) {
          emit(StateCommandGetPersonDetails.loadInProgress(recieved / total));
        },
      );
      if (response?.statusCode == 200) {
        final results = (response.data ?? {})['results'];
        if (results != null && results is List) {
          var indexFound = results.indexWhere(
            (item) => (item as Map)['id'] == id,
          );
          if (indexFound >= 0) {
            var _person = Person.fromJson(results[indexFound]);
            emit(StateCommandGetPersonDetails.data(_person));
          } else {
            _logger.e("Error in $runtimeType | user not found");
            emit(StateCommandGetPersonDetails.error(message: S.current.errorGeneral));
          }
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
  const factory StateCommandGetPersonDetails.data(Person person) = _Data;
  const factory StateCommandGetPersonDetails.error({
    int? statusCode,
    @Default('') String? message,
    @Default('') String? statusMsg,
    @Default('') String? reasonMsg,
    @Default('') dynamic? data,
    Map<String, dynamic>? extra,
  }) = _Error;
}

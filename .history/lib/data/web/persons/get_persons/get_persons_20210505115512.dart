import 'dart:async';

import 'package:testorium/common/app_dio.dart';
import 'package:testorium/dto/person/person.dart';
import 'package:testorium/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
part 'get_persons.freezed.dart';

part 'generate_error_state.dart';

class CubitGetPersons extends Cubit<StateCommandGetPersons> {
  CubitGetPersons() : super(const StateCommandGetPersons.loadInProgress(0.0)) {
    _run();
  }

  final _logger = Logger();

  Future<void> _run() async {
    try {
      final response = await appDio(runtimeType).get(
        '/api/character?page=1',
        onReceiveProgress: (recieved, total) {
          emit(StateCommandGetPersons.loadInProgress(recieved / total));
        },
      );
      if (response.statusCode == 200) {
        final results = response.data?['results'];
        if (results != null && results is List) {
          var _persons = results.map<Person>((item) => Person.fromJson(item)).toList();
          emit(StateCommandGetPersons.data(_persons));
        } else {
          _logger.e("Error in $runtimeType | data is ${response.data.runtimeType}");
          emit(StateCommandGetPersons.error(message: S.current.errorGeneral));
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
class StateCommandGetPersons with _$StateCommandGetPersons {
  const factory StateCommandGetPersons.loadInProgress(double progress) = _LoadInProgress;
  const factory StateCommandGetPersons.data(List<Person> list) = _Data;
  const factory StateCommandGetPersons.error({
    int? statusCode,
    @Default('') String? message,
    @Default('') String? statusMsg,
    @Default('') String? reasonMsg,
    @Default('') dynamic? data,
    Map<String, dynamic>? extra,
  }) = _Error;
}

class UserOrError {
  UserOrError({this.user, this.error});
  factory UserOrError.user() => UserOrError(user: 'User');
  factory UserOrError.error() => UserOrError(error: "Error");
  factory UserOrError.userNotFound() => UserOrError(error: "Error");
  String? user = '';
  String? error = 'error';
}

abstract class UserRepo {
  UserOrError getUser();
}

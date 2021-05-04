import 'package:testorium/core/models/person.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'persons_data_sources.dart';
part 'persons_repository.freezed.dart';

class PersonsRepository extends Bloc<EventPersonsRepository, StatePersonsRepository> {
  PersonsRepository(this._dataSources) : super(const StatePersonsRepository.initial());
  final PersonsDataSources _dataSources;

  @override
  Stream<StatePersonsRepository> mapEventToState(event) async* {
    yield* event.when(loadData: _mapLoadData);
  }

  Stream<StatePersonsRepository> _mapLoadData() async* {
    yield const StatePersonsRepository.loadInProgress(0.0);
    await for (var _state in _dataSources.web.getPersons()) {
      yield* _state.map(
        loadInProgress: (loadInProgress) async* {
          yield StatePersonsRepository.loadInProgress(loadInProgress.progress);
        },
        data: (data) async* {
          yield StatePersonsRepository.data(data.list);
        },
        error: (error) async* {
          yield StatePersonsRepository.error(
            msg: error.msg,
            statusCode: error.statusCode,
            statusMsg: error.statusMsg,
            reasonMsg: error.reasonMsg,
            data: error.data,
            extra: error.extra,
          );
        },
      );
    }
  }
}

@freezed
abstract class StatePersonsRepository with _$StatePersonsRepository {
  const factory StatePersonsRepository.initial() = _Initial;
  const factory StatePersonsRepository.loadInProgress(double progress) = _LoadInProgress;
  const factory StatePersonsRepository.data(List<Person> list) = _Data;
  const factory StatePersonsRepository.error({
    int statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Error;
}

@freezed
abstract class EventPersonsRepository with _$EventPersonsRepository {
  const factory EventPersonsRepository.loadData() = _LoadData;
}

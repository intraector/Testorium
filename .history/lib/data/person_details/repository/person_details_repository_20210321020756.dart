import 'package:Testorium/core/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'person_details_data_sources.dart';
part 'person_details_repository.freezed.dart';

class PersonDetailsRepository
    extends Bloc<EventPersonDetailsRepository, StatePersonsDetailsRepository> {
  PersonDetailsRepository(this._dataSources) : super(const StatePersonsDetailsRepository.initial());
  final PersonsDataSources _dataSources;

  @override
  Stream<StatePersonsDetailsRepository> mapEventToState(event) async* {
    yield* event.when(loadData: _mapLoadData);
  }

  Stream<StatePersonsDetailsRepository> _mapLoadData() async* {
    yield const StatePersonsDetailsRepository.loadInProgress(0.0);
    await for (var _state in _dataSources.web.getPersons()) {
      yield* _state.map(
        loadInProgress: (loadInProgress) async* {
          yield StatePersonsDetailsRepository.loadInProgress(loadInProgress.progress);
        },
        data: (data) async* {
          yield StatePersonsDetailsRepository.data(data.list);
        },
        error: (error) async* {
          yield StatePersonsDetailsRepository.error(
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
abstract class StatePersonsDetailsRepository with _$StatePersonsRepository {
  const factory StatePersonsDetailsRepository.initial() = _Initial;
  const factory StatePersonsDetailsRepository.loadInProgress(double progress) = _LoadInProgress;
  const factory StatePersonsDetailsRepository.data(User user) = _Data;
  const factory StatePersonsDetailsRepository.error({
    int statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Error;
}

@freezed
abstract class EventPersonDetailsRepository with _$EventPersonsRepository {
  const factory EventPersonDetailsRepository.loadData() = _LoadData;
}

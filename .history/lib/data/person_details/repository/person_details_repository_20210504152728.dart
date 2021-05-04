import 'package:testorium/core/models/person.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'person_details_data_sources.dart';
part 'person_details_repository.freezed.dart';

class PersonDetailsRepository
    extends Bloc<EventPersonDetailsRepository, StatePersonDetailsRepository> {
  PersonDetailsRepository({
    @required this.dataSources,
    @required this.id,
  }) : super(const StatePersonDetailsRepository.initial()) {
    add(EventPersonDetailsRepository.loadData(id));
  }
  final PersonDetailsDataSources dataSources;
  final int id;

  @override
  Stream<StatePersonDetailsRepository> mapEventToState(event) async* {
    yield* event.when(loadData: _mapLoadData);
  }

  Stream<StatePersonDetailsRepository> _mapLoadData(int id) async* {
    yield const StatePersonDetailsRepository.loadInProgress(0.0);
    await for (var _state in dataSources.web.getPersonDetails(id)) {
      yield* _state.map(
        loadInProgress: (loadInProgress) async* {
          yield StatePersonDetailsRepository.loadInProgress(loadInProgress.progress);
        },
        data: (data) async* {
          yield StatePersonDetailsRepository.data(data.user);
        },
        error: (error) async* {
          yield StatePersonDetailsRepository.error(
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
abstract class StatePersonDetailsRepository with _$StatePersonDetailsRepository {
  const factory StatePersonDetailsRepository.initial() = _Initial;
  const factory StatePersonDetailsRepository.loadInProgress(double progress) = _LoadInProgress;
  const factory StatePersonDetailsRepository.data(Person user) = _Data;
  const factory StatePersonDetailsRepository.error({
    int statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Error;
}

@freezed
abstract class EventPersonDetailsRepository with _$EventPersonDetailsRepository {
  const factory EventPersonDetailsRepository.loadData(int id) = _LoadData;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'persons_data_sources.dart';
part 'persons_repository.freezed.dart';

class PersonsRepository extends Bloc<EventConcernsRepository, StateConcernsRepository> {
  PersonsRepository(this._dataSources) : super(const StateConcernsRepository.initial());
  PersonsDataSources _dataSources;

  @override
  Stream<StateConcernsRepository> mapEventToState(event) async* {
    yield* event.when(init: _mapInit);
  }

  Stream<StateConcernsRepository> _mapInit() async* {
    yield const StateConcernsRepository.loadInProgress(0.0);
    await for (var _state in _dataSource.web.getConcerns()) {
      yield* _state.map(
        loadInProgress: (loadInProgress) async* {
          yield StateConcernsRepository.loadInProgress(loadInProgress.progress);
        },
        data: (data) async* {
          yield StateConcernsRepository.data(data.list);
        },
        error: (error) async* {
          yield StateConcernsRepository.error(msg: error.msg);
        },
      );
    }
  }
}

@freezed
abstract class StateConcernsRepository with _$StateConcernsRepository {
  const factory StateConcernsRepository.initial() = _Initial;
  const factory StateConcernsRepository.loadInProgress(double progress) = _LoadInProgress;
  const factory StateConcernsRepository.data(List<Concern> list) = _Data;
  const factory StateConcernsRepository.error(
      {@Default('') String msg, int statusCode, dynamic data}) = _Error;
}

@freezed
abstract class EventConcernsRepository with _$EventConcernsRepository {
  const factory EventConcernsRepository.init() = _Init;
}

import 'package:Testorium/dto/person/person.dart';
import 'package:Testorium/data/web/persons/persons_repository_web.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_persons.freezed.dart';

class BlocPersons extends Bloc<EventBlocPersons, StateBlocPersons> {
  BlocPersons(this._personsRepo) : super(const StateBlocPersons.initial());
  final PersonsRepositoryWeb _personsRepo;

  @override
  Stream<StateBlocPersons> mapEventToState(event) async* {
    yield* event.when(loadData: _mapLoadData);
  }

  Stream<StateBlocPersons> _mapLoadData() async* {
    yield const StateBlocPersons.loadInProgress(0.0);
    await for (var _state in _personsRepo.getPersons()) {
      yield* _state.map(
        loadInProgress: (loadInProgress) async* {
          yield StateBlocPersons.loadInProgress(loadInProgress.progress);
        },
        data: (data) async* {
          yield StateBlocPersons.data(data.list);
        },
        error: (error) async* {
          yield StateBlocPersons.error(
            msg: error.message,
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
abstract class StateBlocPersons with _$StateBlocPersons {
  const factory StateBlocPersons.initial() = _Initial;
  const factory StateBlocPersons.loadInProgress(double progress) = _LoadInProgress;
  const factory StateBlocPersons.data(List<Person> list) = _Data;
  const factory StateBlocPersons.error({
    int? statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
   dynamic? @Default('') data,
    Map<String, dynamic> extra,
  }) = _Error;
}

@freezed
abstract class EventBlocPersons with _$EventBlocPersons {
  const factory EventBlocPersons.loadData() = _LoadData;
}

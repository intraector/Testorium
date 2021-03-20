import 'package:Testorium/core/models/user.dart';
import 'package:Testorium/generated/l10n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import 'persons_converter_web.dart';
import 'persons_data_source_web.dart';

part 'persons_adapter_web.freezed.dart';

class PersonsAdapterWeb {
  PersonsAdapterWeb({
    @required this.dataSource,
    @required this.converter,
  });
  PersonsDataSourceWeb dataSource;
  PersonsConverterWeb converter;
  final _logger = Logger();

  Stream<StatePersonsAdapterWeb> getPersons() async* {
    await for (var state in dataSource.getPersonsList()) {
      yield* state.map(
        loadInProgress: (state) async* {
          yield StatePersonsAdapterWeb.loadInProgress(state.progress);
        },
        data: (data) async* {
          yield* _mapData(data.data);
        },
        error: (error) async* {
          yield StatePersonsAdapterWeb.error(msg: error.msg);
        },
      );
    }
  }

  // Stream<StatePersonsAdapterWeb> getConcernDetails(int id) async* {
  //   if (id == null) {
  //     yield StatePersonsAdapterWeb.error(msg: 'Error in $runtimeType | id is null');
  //     return;
  //   }
  //   await for (var state in dataSource.getConcerns(id)) {
  //     yield* state.map(
  //       loadInProgress: (state) async* {
  //         yield StatePersonsAdapterWeb.loadInProgress(state.progress);
  //       },
  //       data: (data) async* {
  //         yield* _mapDataConcernDetails(data.data);
  //       },
  //       error: (error) async* {
  //         yield StatePersonsAdapterWeb.error(msg: error.msg);
  //       },
  //     );
  //   }
  // }

  Stream<StatePersonsAdapterWeb> _mapData(dynamic data) async* {
    print('---------- data : $data');
    final results = (data ?? {})['results'];
    if (results != null && results is List) {
      var output = data.map((item) => converter.mapToUser(item)).toList();
      yield StatePersonsAdapterWeb.data(list: output);
    } else {
      _logger.e("Error in $runtimeType | data is ${data.runtimeType}");
      yield StatePersonsAdapterWeb.error(msg: S.current.errorGeneral);
    }
  }

  // Stream<StatePersonsAdapterWeb> _mapDataConcernDetails(dynamic data) async* {
  //   if (data is Map) {
  //     var output = Convert.mapToConcernEntity(data, url: AppSettings.url);
  //     yield StatePersonsAdapterWeb.data(list: [output]);
  //   } else {
  //     _logger.e("Error in $runtimeType | data is ${data.runtimeType}");
  //     yield StatePersonsAdapterWeb.error(msg: S.current.errorGeneral);
  //   }
  // }
}

@freezed
abstract class StatePersonsAdapterWeb with _$StatePersonsAdapterWeb {
  const factory StatePersonsAdapterWeb.loadInProgress(double progress) = _LoadInProgress;
  const factory StatePersonsAdapterWeb.data({List<User> list}) = _Data;
  const factory StatePersonsAdapterWeb.error({
    int statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Error;
}

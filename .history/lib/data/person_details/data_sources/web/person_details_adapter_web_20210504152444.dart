import 'package:testorium/core/models/user.dart';
import 'package:testorium/generated/l10n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import 'person_details_converter_web.dart';
import 'person_details_data_source_web.dart';

part 'person_details_adapter_web.freezed.dart';

class PersonDetailsAdapterWeb {
  PersonDetailsAdapterWeb({
    @required this.dataSource,
    @required this.converter,
  });
  PersonDetailsDataSourceWeb dataSource;
  PersonDetailsConverterWeb converter;
  final _logger = Logger();

  Stream<StatePersonsAdapterWeb> getPersonDetails(int id) async* {
    await for (var state in dataSource.getPersonDetails(id)) {
      yield* state.map(
        loadInProgress: (state) async* {
          yield StatePersonsAdapterWeb.loadInProgress(state.progress);
        },
        data: (data) async* {
          yield* _mapData(data.data, id);
        },
        error: (error) async* {
          yield StatePersonsAdapterWeb.error(
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

  Stream<StatePersonsAdapterWeb> _mapData(dynamic data, int id) async* {
    final results = (data ?? {})['results'];
    if (results != null && results is List) {
      var indexFound = results.indexWhere(
        (item) => (item as Map)['id'] == id,
      );
      if (indexFound >= 0) {
        var _user = converter.mapToUser(results[indexFound]);
        yield StatePersonsAdapterWeb.data(user: _user);
      } else {
        _logger.e("Error in $runtimeType | user not found");
        yield StatePersonsAdapterWeb.error(msg: S.current.errorGeneral);
      }
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
  const factory StatePersonsAdapterWeb.data({Person user}) = _Data;
  const factory StatePersonsAdapterWeb.error({
    int statusCode,
    @Default('') String msg,
    @Default('') String statusMsg,
    @Default('') String reasonMsg,
    dynamic data,
    Map<String, dynamic> extra,
  }) = _Error;
}

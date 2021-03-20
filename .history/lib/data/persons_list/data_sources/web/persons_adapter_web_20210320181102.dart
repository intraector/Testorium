import 'package:one_click/constants/app_settings.dart';
import 'package:one_click/core/models/concern.dart';
import 'package:one_click/data/concerns/data_sources/concerns_data_source_interface.dart';
import 'package:one_click/data/concerns/data_sources/web/concerns_web_converter.dart';
import 'package:one_click/data/concerns/data_sources/web/concerns_web_source.dart';
import 'package:one_click/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class ConcernsWebAdapter implements ConcernsDataSourceInterface {
  var dataSource = ConcernsWebSource();
  var _logger = Logger();

  @override
  Stream<StateConcernsDataSource> getConcerns() async* {
    await for (var state in dataSource.getConcerns()) {
      yield* state.map(
        loadInProgress: (state) async* {
          yield StateConcernsDataSource.loadInProgress(state.progress);
        },
        data: (data) async* {
          yield* _mapDataConcerns(data.data);
        },
        error: (error) async* {
          yield StateConcernsDataSource.error(msg: error.msg);
        },
      );
    }
  }

  @override
  Stream<StateConcernsDataSource> getConcernDetails(int id) async* {
    if (id == null) {
      yield StateConcernsDataSource.error(msg: 'Error in $runtimeType | id is null');
      return;
    }
    await for (var state in dataSource.getConcerns(id)) {
      yield* state.map(
        loadInProgress: (state) async* {
          yield StateConcernsDataSource.loadInProgress(state.progress);
        },
        data: (data) async* {
          yield* _mapDataConcernDetails(data.data);
        },
        error: (error) async* {
          yield StateConcernsDataSource.error(msg: error.msg);
        },
      );
    }
  }

  @override
  Stream<StateConcernsDataSource> getSummary() async* {
    await for (var state in dataSource.getSummary()) {
      yield* state.map(
        loadInProgress: (state) async* {
          yield StateConcernsDataSource.loadInProgress(state.progress);
        },
        data: (data) async* {
          yield* _mapDataSummary(data.data);
        },
        error: (error) async* {
          yield StateConcernsDataSource.error(msg: error.msg);
        },
      );
    }
  }

  @override
  Stream<StateConcernsDataSource> addConcern(Concern concern, {@required String token}) async* {
    if (concern == null) {
      yield StateConcernsDataSource.error(msg: 'Error in $runtimeType | concern is null');
      return;
    }
    if (token == null) {
      yield StateConcernsDataSource.error(msg: 'Error in $runtimeType | token is null');
      return;
    }
    await for (final state in dataSource.addConcern(concern, token: token)) {
      yield* state.map(
        loadInProgress: (loadInProgress) async* {
          yield StateConcernsDataSource.loadInProgress(loadInProgress.progress);
        },
        data: (data) async* {
          yield StateConcernsDataSource.data();
        },
        error: (error) async* {
          yield StateConcernsDataSource.error(msg: error.msg);
        },
      );
    }
  }

  Stream<StateConcernsDataSource> _mapDataConcerns(dynamic data) async* {
    if (data is List) {
      var output =
          data.map((item) => Convert.mapToConcernEntity(item, url: AppSettings.url)).toList();
      yield StateConcernsDataSource.data(list: output);
    } else {
      _logger.e("Error in $runtimeType | data is ${data.runtimeType}");
      yield StateConcernsDataSource.error(msg: S.current.errorGeneral);
    }
  }

  Stream<StateConcernsDataSource> _mapDataConcernDetails(dynamic data) async* {
    if (data is Map) {
      var output = Convert.mapToConcernEntity(data, url: AppSettings.url);
      yield StateConcernsDataSource.data(list: [output]);
    } else {
      _logger.e("Error in $runtimeType | data is ${data.runtimeType}");
      yield StateConcernsDataSource.error(msg: S.current.errorGeneral);
    }
  }

  Stream<StateConcernsDataSource> _mapDataSummary(dynamic data) async* {
    if (data is Map) {
      var output = Convert.mapToSummary(data);
      yield StateConcernsDataSource.data(summary: output);
    } else {
      _logger.e("Error in $runtimeType | data is ${data.runtimeType}");
      yield StateConcernsDataSource.error(msg: S.current.errorGeneral);
    }
  }
}

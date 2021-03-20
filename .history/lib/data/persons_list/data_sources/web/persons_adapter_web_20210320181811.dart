import 'package:Testorium/core/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import 'persons_data_source_web.dart';

part 'persons_adapter_web.freezed.dart';

// class PersonsAdapterWeb {
//   PersonsAdapterWeb(this.dataSource);
//   PersonsDataSourceWeb dataSource;
//   final _logger = Logger();

//   @override
//   Stream<StatePersonsAdapterWeb> getConcerns() async* {
//     await for (var state in dataSource.getConcerns()) {
//       yield* state.map(
//         loadInProgress: (state) async* {
//           yield StatePersonsAdapterWeb.loadInProgress(state.progress);
//         },
//         data: (data) async* {
//           yield* _mapDataConcerns(data.data);
//         },
//         error: (error) async* {
//           yield StatePersonsAdapterWeb.error(msg: error.msg);
//         },
//       );
//     }
//   }

//   @override
//   Stream<StatePersonsAdapterWeb> getConcernDetails(int id) async* {
//     if (id == null) {
//       yield StatePersonsAdapterWeb.error(msg: 'Error in $runtimeType | id is null');
//       return;
//     }
//     await for (var state in dataSource.getConcerns(id)) {
//       yield* state.map(
//         loadInProgress: (state) async* {
//           yield StatePersonsAdapterWeb.loadInProgress(state.progress);
//         },
//         data: (data) async* {
//           yield* _mapDataConcernDetails(data.data);
//         },
//         error: (error) async* {
//           yield StatePersonsAdapterWeb.error(msg: error.msg);
//         },
//       );
//     }
//   }

//   @override
//   Stream<StatePersonsAdapterWeb> getSummary() async* {
//     await for (var state in dataSource.getSummary()) {
//       yield* state.map(
//         loadInProgress: (state) async* {
//           yield StatePersonsAdapterWeb.loadInProgress(state.progress);
//         },
//         data: (data) async* {
//           yield* _mapDataSummary(data.data);
//         },
//         error: (error) async* {
//           yield StatePersonsAdapterWeb.error(msg: error.msg);
//         },
//       );
//     }
//   }

//   @override
//   Stream<StatePersonsAdapterWeb> addConcern(Concern concern, {@required String token}) async* {
//     if (concern == null) {
//       yield StatePersonsAdapterWeb.error(msg: 'Error in $runtimeType | concern is null');
//       return;
//     }
//     if (token == null) {
//       yield StatePersonsAdapterWeb.error(msg: 'Error in $runtimeType | token is null');
//       return;
//     }
//     await for (final state in dataSource.addConcern(concern, token: token)) {
//       yield* state.map(
//         loadInProgress: (loadInProgress) async* {
//           yield StatePersonsAdapterWeb.loadInProgress(loadInProgress.progress);
//         },
//         data: (data) async* {
//           yield StatePersonsAdapterWeb.data();
//         },
//         error: (error) async* {
//           yield StatePersonsAdapterWeb.error(msg: error.msg);
//         },
//       );
//     }
//   }

//   Stream<StatePersonsAdapterWeb> _mapDataConcerns(dynamic data) async* {
//     if (data is List) {
//       var output =
//           data.map((item) => Convert.mapToConcernEntity(item, url: AppSettings.url)).toList();
//       yield StatePersonsAdapterWeb.data(list: output);
//     } else {
//       _logger.e("Error in $runtimeType | data is ${data.runtimeType}");
//       yield StatePersonsAdapterWeb.error(msg: S.current.errorGeneral);
//     }
//   }

//   Stream<StatePersonsAdapterWeb> _mapDataConcernDetails(dynamic data) async* {
//     if (data is Map) {
//       var output = Convert.mapToConcernEntity(data, url: AppSettings.url);
//       yield StatePersonsAdapterWeb.data(list: [output]);
//     } else {
//       _logger.e("Error in $runtimeType | data is ${data.runtimeType}");
//       yield StatePersonsAdapterWeb.error(msg: S.current.errorGeneral);
//     }
//   }

//   Stream<StatePersonsAdapterWeb> _mapDataSummary(dynamic data) async* {
//     if (data is Map) {
//       var output = Convert.mapToSummary(data);
//       yield StatePersonsAdapterWeb.data(summary: output);
//     } else {
//       _logger.e("Error in $runtimeType | data is ${data.runtimeType}");
//       yield StatePersonsAdapterWeb.error(msg: S.current.errorGeneral);
//     }
//   }
// }

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

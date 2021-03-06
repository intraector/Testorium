import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'theme_interface.dart';
import 'themes/main_theme.dart';
part 'theme_bloc.freezed.dart';

class BlocTheme extends Bloc<EventTheme, StateTheme> {
  BlocTheme() : super(StateTheme(theme: MainTheme()));

  @override
  Stream<StateTheme> mapEventToState(EventTheme event) async* {
    yield* event.when(main: _mapMain);
  }

  Stream<StateTheme> _mapMain() async* {
    yield StateTheme(theme: MainTheme());
  }
}

@freezed
abstract class StateTheme with _$StateTheme {
  const factory StateTheme({
    @required AppTheme theme,
  }) = _Current;
}

@freezed
abstract class EventTheme with _$EventTheme {
  const factory EventTheme.main() = _EventMain;
}

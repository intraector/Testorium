import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'theme_interface.dart';
import 'themes/main_theme.dart';
part 'theme_bloc.freezed.dart';

class BlocTheme extends Bloc<EventBlocTheme, StateBlocTheme> {
  BlocTheme() : super(StateBlocTheme(theme: MainTheme()));

  @override
  Stream<StateBlocTheme> mapEventToState(EventBlocTheme event) async* {
    yield* event.when(main: _mapMain);
  }

  Stream<StateBlocTheme> _mapMain() async* {
    yield StateBlocTheme(theme: MainTheme());
  }
}

@freezed
abstract class StateBlocTheme with _$StateTheme {
  const factory StateBlocTheme({
    @required AppTheme theme,
  }) = _Current;
}

@freezed
abstract class EventBlocTheme with _$EventTheme {
  const factory EventBlocTheme.main() = _EventMain;
}

import 'package:one_click/ui/_themes/theme_interface.dart';
import 'package:one_click/ui/_themes/themes/main_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'theme_bloc.freezed.dart';

class BlocTheme extends Bloc<EventTheme, StateTheme> {
  BlocTheme() : super(StateTheme(theme: MainTheme()));

  Stream<StateTheme> _mapMain() async* {
    yield StateTheme(theme: MainTheme());
  }

  @override
  Stream<StateTheme> mapEventToState(EventTheme event) async* {
    yield* event.when(
      main: _mapMain,
    );
  }
}

@freezed
abstract class StateTheme with _$StateTheme {
  const factory StateTheme({
    // String uuid,
    @required AppTheme theme,
  }) = _Current;
}

@freezed
abstract class EventTheme with _$EventTheme {
  const factory EventTheme.main() = _EventMain;
}

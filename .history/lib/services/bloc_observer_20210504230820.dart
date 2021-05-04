import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

/// Print every action in blocs
class PrintBlocObserver extends BlocObserver {
  final _logger = Logger(
    printer: PrettyPrinter(
      printEmojis: false,
      methodCount: 0,
    ),
  );

  @override
  void onCreate(BlocBase cubit) {
    _logger.v('${cubit.runtimeType} has been created');
    super.onCreate(cubit);
  }

  @override
  void onError(BlocBase cubit, Object error, StackTrace stackTrace) {
    _logger.v(
      '${error.runtimeType} in ${cubit.runtimeType}.',
      error,
      stackTrace,
    );
    super.onError(cubit, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    _logger.v(
      '${bloc.runtimeType}: state ${transition.nextState.runtimeType}',
    );
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(BlocBase cubit, Change change) {
    _logger.v(
      "${cubit.runtimeType}: state ${change.nextState.runtimeType}",
    );
    super.onChange(cubit, change);
  }

  @override
  void onEvent(Bloc bloc) {
    _logger.v("------${bloc.runtimeType}: event ${event.runtimeType}");
    super.onEvent(bloc, event);
  }

  @override
  void onClose(BlocBase cubit) {
    _logger.v('${cubit.runtimeType} has been closed');
    super.onClose(cubit);
  }
}

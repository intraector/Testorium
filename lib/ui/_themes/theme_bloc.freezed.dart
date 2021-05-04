// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StateBlocThemeTearOff {
  const _$StateBlocThemeTearOff();

// ignore: unused_element
  _Current call({@required AppTheme theme}) {
    return _Current(
      theme: theme,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StateBlocTheme = _$StateBlocThemeTearOff();

/// @nodoc
mixin _$StateBlocTheme {
  AppTheme get theme;

  @JsonKey(ignore: true)
  $StateBlocThemeCopyWith<StateBlocTheme> get copyWith;
}

/// @nodoc
abstract class $StateBlocThemeCopyWith<$Res> {
  factory $StateBlocThemeCopyWith(
          StateBlocTheme value, $Res Function(StateBlocTheme) then) =
      _$StateBlocThemeCopyWithImpl<$Res>;
  $Res call({AppTheme theme});
}

/// @nodoc
class _$StateBlocThemeCopyWithImpl<$Res>
    implements $StateBlocThemeCopyWith<$Res> {
  _$StateBlocThemeCopyWithImpl(this._value, this._then);

  final StateBlocTheme _value;
  // ignore: unused_field
  final $Res Function(StateBlocTheme) _then;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

/// @nodoc
abstract class _$CurrentCopyWith<$Res>
    implements $StateBlocThemeCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) then) =
      __$CurrentCopyWithImpl<$Res>;
  @override
  $Res call({AppTheme theme});
}

/// @nodoc
class __$CurrentCopyWithImpl<$Res> extends _$StateBlocThemeCopyWithImpl<$Res>
    implements _$CurrentCopyWith<$Res> {
  __$CurrentCopyWithImpl(_Current _value, $Res Function(_Current) _then)
      : super(_value, (v) => _then(v as _Current));

  @override
  _Current get _value => super._value as _Current;

  @override
  $Res call({
    Object theme = freezed,
  }) {
    return _then(_Current(
      theme: theme == freezed ? _value.theme : theme as AppTheme,
    ));
  }
}

/// @nodoc
class _$_Current implements _Current {
  const _$_Current({@required this.theme}) : assert(theme != null);

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'StateBlocTheme(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Current &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(theme);

  @JsonKey(ignore: true)
  @override
  _$CurrentCopyWith<_Current> get copyWith =>
      __$CurrentCopyWithImpl<_Current>(this, _$identity);
}

abstract class _Current implements StateBlocTheme {
  const factory _Current({@required AppTheme theme}) = _$_Current;

  @override
  AppTheme get theme;
  @override
  @JsonKey(ignore: true)
  _$CurrentCopyWith<_Current> get copyWith;
}

/// @nodoc
class _$EventBlocThemeTearOff {
  const _$EventBlocThemeTearOff();

// ignore: unused_element
  _EventMain main() {
    return const _EventMain();
  }
}

/// @nodoc
// ignore: unused_element
const $EventBlocTheme = _$EventBlocThemeTearOff();

/// @nodoc
mixin _$EventBlocTheme {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult main(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult main(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult main(_EventMain value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult main(_EventMain value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EventBlocThemeCopyWith<$Res> {
  factory $EventBlocThemeCopyWith(
          EventBlocTheme value, $Res Function(EventBlocTheme) then) =
      _$EventBlocThemeCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventBlocThemeCopyWithImpl<$Res>
    implements $EventBlocThemeCopyWith<$Res> {
  _$EventBlocThemeCopyWithImpl(this._value, this._then);

  final EventBlocTheme _value;
  // ignore: unused_field
  final $Res Function(EventBlocTheme) _then;
}

/// @nodoc
abstract class _$EventMainCopyWith<$Res> {
  factory _$EventMainCopyWith(
          _EventMain value, $Res Function(_EventMain) then) =
      __$EventMainCopyWithImpl<$Res>;
}

/// @nodoc
class __$EventMainCopyWithImpl<$Res> extends _$EventBlocThemeCopyWithImpl<$Res>
    implements _$EventMainCopyWith<$Res> {
  __$EventMainCopyWithImpl(_EventMain _value, $Res Function(_EventMain) _then)
      : super(_value, (v) => _then(v as _EventMain));

  @override
  _EventMain get _value => super._value as _EventMain;
}

/// @nodoc
class _$_EventMain implements _EventMain {
  const _$_EventMain();

  @override
  String toString() {
    return 'EventBlocTheme.main()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EventMain);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult main(),
  }) {
    assert(main != null);
    return main();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult main(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (main != null) {
      return main();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult main(_EventMain value),
  }) {
    assert(main != null);
    return main(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult main(_EventMain value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (main != null) {
      return main(this);
    }
    return orElse();
  }
}

abstract class _EventMain implements EventBlocTheme {
  const factory _EventMain() = _$_EventMain;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_persons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StateCommandGetPersonsTearOff {
  const _$StateCommandGetPersonsTearOff();

  _LoadInProgress loadInProgress(double progress) {
    return _LoadInProgress(
      progress,
    );
  }

  _Data data(List<Person> list) {
    return _Data(
      list,
    );
  }

  _Error error(
      {int? statusCode,
      String? message = '',
      String? statusMsg = '',
      String? reasonMsg = '',
      dynamic? data = '',
      Map<String, dynamic>? extra}) {
    return _Error(
      statusCode: statusCode,
      message: message,
      statusMsg: statusMsg,
      reasonMsg: reasonMsg,
      data: data,
      extra: extra,
    );
  }
}

/// @nodoc
const $StateCommandGetPersons = _$StateCommandGetPersonsTearOff();

/// @nodoc
mixin _$StateCommandGetPersons {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) loadInProgress,
    required TResult Function(List<Person> list) data,
    required TResult Function(
            int? statusCode,
            String? message,
            String? statusMsg,
            String? reasonMsg,
            dynamic? data,
            Map<String, dynamic>? extra)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? loadInProgress,
    TResult Function(List<Person> list)? data,
    TResult Function(int? statusCode, String? message, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCommandGetPersonsCopyWith<$Res> {
  factory $StateCommandGetPersonsCopyWith(StateCommandGetPersons value,
          $Res Function(StateCommandGetPersons) then) =
      _$StateCommandGetPersonsCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateCommandGetPersonsCopyWithImpl<$Res>
    implements $StateCommandGetPersonsCopyWith<$Res> {
  _$StateCommandGetPersonsCopyWithImpl(this._value, this._then);

  final StateCommandGetPersons _value;
  // ignore: unused_field
  final $Res Function(StateCommandGetPersons) _then;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  $Res call({double progress});
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$StateCommandGetPersonsCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object? progress = freezed,
  }) {
    return _then(_LoadInProgress(
      progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress(this.progress);

  @override
  final double progress;

  @override
  String toString() {
    return 'StateCommandGetPersons.loadInProgress(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInProgress &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(progress);

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) loadInProgress,
    required TResult Function(List<Person> list) data,
    required TResult Function(
            int? statusCode,
            String? message,
            String? statusMsg,
            String? reasonMsg,
            dynamic? data,
            Map<String, dynamic>? extra)
        error,
  }) {
    return loadInProgress(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? loadInProgress,
    TResult Function(List<Person> list)? data,
    TResult Function(int? statusCode, String? message, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)?
        error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements StateCommandGetPersons {
  const factory _LoadInProgress(double progress) = _$_LoadInProgress;

  double get progress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call({List<Person> list});
}

/// @nodoc
class __$DataCopyWithImpl<$Res>
    extends _$StateCommandGetPersonsCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_Data(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(this.list);

  @override
  final List<Person> list;

  @override
  String toString() {
    return 'StateCommandGetPersons.data(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) loadInProgress,
    required TResult Function(List<Person> list) data,
    required TResult Function(
            int? statusCode,
            String? message,
            String? statusMsg,
            String? reasonMsg,
            dynamic? data,
            Map<String, dynamic>? extra)
        error,
  }) {
    return data(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? loadInProgress,
    TResult Function(List<Person> list)? data,
    TResult Function(int? statusCode, String? message, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)?
        error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements StateCommandGetPersons {
  const factory _Data(List<Person> list) = _$_Data;

  List<Person> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call(
      {int? statusCode,
      String? message,
      String? statusMsg,
      String? reasonMsg,
      dynamic? data,
      Map<String, dynamic>? extra});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    extends _$StateCommandGetPersonsCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? statusMsg = freezed,
    Object? reasonMsg = freezed,
    Object? data = freezed,
    Object? extra = freezed,
  }) {
    return _then(_Error(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusMsg: statusMsg == freezed
          ? _value.statusMsg
          : statusMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonMsg: reasonMsg == freezed
          ? _value.reasonMsg
          : reasonMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      extra: extra == freezed
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {this.statusCode,
      this.message = '',
      this.statusMsg = '',
      this.reasonMsg = '',
      this.data = '',
      this.extra});

  @override
  final int? statusCode;
  @JsonKey(defaultValue: '')
  @override
  final String? message;
  @JsonKey(defaultValue: '')
  @override
  final String? statusMsg;
  @JsonKey(defaultValue: '')
  @override
  final String? reasonMsg;
  @JsonKey(defaultValue: '')
  @override
  final dynamic? data;
  @override
  final Map<String, dynamic>? extra;

  @override
  String toString() {
    return 'StateCommandGetPersons.error(statusCode: $statusCode, message: $message, statusMsg: $statusMsg, reasonMsg: $reasonMsg, data: $data, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.statusMsg, statusMsg) ||
                const DeepCollectionEquality()
                    .equals(other.statusMsg, statusMsg)) &&
            (identical(other.reasonMsg, reasonMsg) ||
                const DeepCollectionEquality()
                    .equals(other.reasonMsg, reasonMsg)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.extra, extra) ||
                const DeepCollectionEquality().equals(other.extra, extra)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(statusMsg) ^
      const DeepCollectionEquality().hash(reasonMsg) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(extra);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) loadInProgress,
    required TResult Function(List<Person> list) data,
    required TResult Function(
            int? statusCode,
            String? message,
            String? statusMsg,
            String? reasonMsg,
            dynamic? data,
            Map<String, dynamic>? extra)
        error,
  }) {
    return error(statusCode, message, statusMsg, reasonMsg, this.data, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? loadInProgress,
    TResult Function(List<Person> list)? data,
    TResult Function(int? statusCode, String? message, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(statusCode, message, statusMsg, reasonMsg, this.data, extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StateCommandGetPersons {
  const factory _Error(
      {int? statusCode,
      String? message,
      String? statusMsg,
      String? reasonMsg,
      dynamic? data,
      Map<String, dynamic>? extra}) = _$_Error;

  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get statusMsg => throw _privateConstructorUsedError;
  String? get reasonMsg => throw _privateConstructorUsedError;
  dynamic? get data => throw _privateConstructorUsedError;
  Map<String, dynamic>? get extra => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

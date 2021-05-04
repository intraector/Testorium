// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bloc_persons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StateBlocPersonsTearOff {
  const _$StateBlocPersonsTearOff();

  _Initial initial() {
    return const _Initial();
  }

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
      String? msg = '',
      String? statusMsg = '',
      String? reasonMsg = '',
      dynamic? data = '',
      Map<String, dynamic>? extra}) {
    return _Error(
      statusCode: statusCode,
      msg: msg,
      statusMsg: statusMsg,
      reasonMsg: reasonMsg,
      data: data,
      extra: extra,
    );
  }
}

/// @nodoc
const $StateBlocPersons = _$StateBlocPersonsTearOff();

/// @nodoc
mixin _$StateBlocPersons {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress) loadInProgress,
    required TResult Function(List<Person> list) data,
    required TResult Function(int? statusCode, String? msg, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress)? loadInProgress,
    TResult Function(List<Person> list)? data,
    TResult Function(int? statusCode, String? msg, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateBlocPersonsCopyWith<$Res> {
  factory $StateBlocPersonsCopyWith(
          StateBlocPersons value, $Res Function(StateBlocPersons) then) =
      _$StateBlocPersonsCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateBlocPersonsCopyWithImpl<$Res>
    implements $StateBlocPersonsCopyWith<$Res> {
  _$StateBlocPersonsCopyWithImpl(this._value, this._then);

  final StateBlocPersons _value;
  // ignore: unused_field
  final $Res Function(StateBlocPersons) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$StateBlocPersonsCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'StateBlocPersons.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress) loadInProgress,
    required TResult Function(List<Person> list) data,
    required TResult Function(int? statusCode, String? msg, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress)? loadInProgress,
    TResult Function(List<Person> list)? data,
    TResult Function(int? statusCode, String? msg, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StateBlocPersons {
  const factory _Initial() = _$_Initial;
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
    extends _$StateBlocPersonsCopyWithImpl<$Res>
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
    return 'StateBlocPersons.loadInProgress(progress: $progress)';
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
    required TResult Function() initial,
    required TResult Function(double progress) loadInProgress,
    required TResult Function(List<Person> list) data,
    required TResult Function(int? statusCode, String? msg, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)
        error,
  }) {
    return loadInProgress(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress)? loadInProgress,
    TResult Function(List<Person> list)? data,
    TResult Function(int? statusCode, String? msg, String? statusMsg,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _LoadInProgress implements StateBlocPersons {
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
class __$DataCopyWithImpl<$Res> extends _$StateBlocPersonsCopyWithImpl<$Res>
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
    return 'StateBlocPersons.data(list: $list)';
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
    required TResult Function() initial,
    required TResult Function(double progress) loadInProgress,
    required TResult Function(List<Person> list) data,
    required TResult Function(int? statusCode, String? msg, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)
        error,
  }) {
    return data(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress)? loadInProgress,
    TResult Function(List<Person> list)? data,
    TResult Function(int? statusCode, String? msg, String? statusMsg,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Data implements StateBlocPersons {
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
      String? msg,
      String? statusMsg,
      String? reasonMsg,
      dynamic? data,
      Map<String, dynamic>? extra});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$StateBlocPersonsCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? msg = freezed,
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
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
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
      this.msg = '',
      this.statusMsg = '',
      this.reasonMsg = '',
      this.data = '',
      this.extra});

  @override
  final int? statusCode;
  @JsonKey(defaultValue: '')
  @override
  final String? msg;
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
    return 'StateBlocPersons.error(statusCode: $statusCode, msg: $msg, statusMsg: $statusMsg, reasonMsg: $reasonMsg, data: $data, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
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
      const DeepCollectionEquality().hash(msg) ^
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
    required TResult Function() initial,
    required TResult Function(double progress) loadInProgress,
    required TResult Function(List<Person> list) data,
    required TResult Function(int? statusCode, String? msg, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)
        error,
  }) {
    return error(statusCode, msg, statusMsg, reasonMsg, this.data, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress)? loadInProgress,
    TResult Function(List<Person> list)? data,
    TResult Function(int? statusCode, String? msg, String? statusMsg,
            String? reasonMsg, dynamic? data, Map<String, dynamic>? extra)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(statusCode, msg, statusMsg, reasonMsg, this.data, extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Error implements StateBlocPersons {
  const factory _Error(
      {int? statusCode,
      String? msg,
      String? statusMsg,
      String? reasonMsg,
      dynamic? data,
      Map<String, dynamic>? extra}) = _$_Error;

  int? get statusCode => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  String? get statusMsg => throw _privateConstructorUsedError;
  String? get reasonMsg => throw _privateConstructorUsedError;
  dynamic? get data => throw _privateConstructorUsedError;
  Map<String, dynamic>? get extra => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$EventBlocPersonsTearOff {
  const _$EventBlocPersonsTearOff();

  _LoadData loadData() {
    return const _LoadData();
  }
}

/// @nodoc
const $EventBlocPersons = _$EventBlocPersonsTearOff();

/// @nodoc
mixin _$EventBlocPersons {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventBlocPersonsCopyWith<$Res> {
  factory $EventBlocPersonsCopyWith(
          EventBlocPersons value, $Res Function(EventBlocPersons) then) =
      _$EventBlocPersonsCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventBlocPersonsCopyWithImpl<$Res>
    implements $EventBlocPersonsCopyWith<$Res> {
  _$EventBlocPersonsCopyWithImpl(this._value, this._then);

  final EventBlocPersons _value;
  // ignore: unused_field
  final $Res Function(EventBlocPersons) _then;
}

/// @nodoc
abstract class _$LoadDataCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) then) =
      __$LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadDataCopyWithImpl<$Res> extends _$EventBlocPersonsCopyWithImpl<$Res>
    implements _$LoadDataCopyWith<$Res> {
  __$LoadDataCopyWithImpl(_LoadData _value, $Res Function(_LoadData) _then)
      : super(_value, (v) => _then(v as _LoadData));

  @override
  _LoadData get _value => super._value as _LoadData;
}

/// @nodoc

class _$_LoadData implements _LoadData {
  const _$_LoadData();

  @override
  String toString() {
    return 'EventBlocPersons.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements EventBlocPersons {
  const factory _LoadData() = _$_LoadData;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'persons_adapter_web.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatePersonsAdapterWebTearOff {
  const _$StatePersonsAdapterWebTearOff();

// ignore: unused_element
  _LoadInProgress loadInProgress(double progress) {
    return _LoadInProgress(
      progress,
    );
  }

// ignore: unused_element
  _Data data({List<Person> list}) {
    return _Data(
      list: list,
    );
  }

// ignore: unused_element
  _Error error(
      {int statusCode,
      String msg = '',
      String statusMsg = '',
      String reasonMsg = '',
      dynamic data,
      Map<String, dynamic> extra}) {
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
// ignore: unused_element
const $StatePersonsAdapterWeb = _$StatePersonsAdapterWebTearOff();

/// @nodoc
mixin _$StatePersonsAdapterWeb {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInProgress(double progress),
    @required TResult data(List<Person> list),
    @required
        TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
            Map<String, dynamic> extra),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInProgress(double progress),
    TResult data(List<Person> list),
    TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
        Map<String, dynamic> extra),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult data(_Data value),
    @required TResult error(_Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInProgress(_LoadInProgress value),
    TResult data(_Data value),
    TResult error(_Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StatePersonsAdapterWebCopyWith<$Res> {
  factory $StatePersonsAdapterWebCopyWith(
          StatePersonsAdapterWeb value, $Res Function(StatePersonsAdapterWeb) then) =
      _$StatePersonsAdapterWebCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatePersonsAdapterWebCopyWithImpl<$Res> implements $StatePersonsAdapterWebCopyWith<$Res> {
  _$StatePersonsAdapterWebCopyWithImpl(this._value, this._then);

  final StatePersonsAdapterWeb _value;
  // ignore: unused_field
  final $Res Function(StatePersonsAdapterWeb) _then;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  $Res call({double progress});
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$StatePersonsAdapterWebCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object progress = freezed,
  }) {
    return _then(_LoadInProgress(
      progress == freezed ? _value.progress : progress as double,
    ));
  }
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress(this.progress) : assert(progress != null);

  @override
  final double progress;

  @override
  String toString() {
    return 'StatePersonsAdapterWeb.loadInProgress(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInProgress &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality().equals(other.progress, progress)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(progress);

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInProgress(double progress),
    @required TResult data(List<Person> list),
    @required
        TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
            Map<String, dynamic> extra),
  }) {
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return loadInProgress(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInProgress(double progress),
    TResult data(List<Person> list),
    TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
        Map<String, dynamic> extra),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult data(_Data value),
    @required TResult error(_Error value),
  }) {
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInProgress(_LoadInProgress value),
    TResult data(_Data value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements StatePersonsAdapterWeb {
  const factory _LoadInProgress(double progress) = _$_LoadInProgress;

  double get progress;
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) = __$DataCopyWithImpl<$Res>;
  $Res call({List<Person> list});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$StatePersonsAdapterWebCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_Data(
      list: list == freezed ? _value.list : list as List<Person>,
    ));
  }
}

/// @nodoc
class _$_Data implements _Data {
  const _$_Data({this.list});

  @override
  final List<Person> list;

  @override
  String toString() {
    return 'StatePersonsAdapterWeb.data(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInProgress(double progress),
    @required TResult data(List<Person> list),
    @required
        TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
            Map<String, dynamic> extra),
  }) {
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return data(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInProgress(double progress),
    TResult data(List<Person> list),
    TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
        Map<String, dynamic> extra),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult data(_Data value),
    @required TResult error(_Error value),
  }) {
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInProgress(_LoadInProgress value),
    TResult data(_Data value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements StatePersonsAdapterWeb {
  const factory _Data({List<Person> list}) = _$_Data;

  List<Person> get list;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) = __$ErrorCopyWithImpl<$Res>;
  $Res call(
      {int statusCode,
      String msg,
      String statusMsg,
      String reasonMsg,
      dynamic data,
      Map<String, dynamic> extra});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$StatePersonsAdapterWebCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object statusCode = freezed,
    Object msg = freezed,
    Object statusMsg = freezed,
    Object reasonMsg = freezed,
    Object data = freezed,
    Object extra = freezed,
  }) {
    return _then(_Error(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      msg: msg == freezed ? _value.msg : msg as String,
      statusMsg: statusMsg == freezed ? _value.statusMsg : statusMsg as String,
      reasonMsg: reasonMsg == freezed ? _value.reasonMsg : reasonMsg as String,
      data: data == freezed ? _value.data : data as dynamic,
      extra: extra == freezed ? _value.extra : extra as Map<String, dynamic>,
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
      this.data,
      this.extra})
      : assert(msg != null),
        assert(statusMsg != null),
        assert(reasonMsg != null);

  @override
  final int statusCode;
  @JsonKey(defaultValue: '')
  @override
  final String msg;
  @JsonKey(defaultValue: '')
  @override
  final String statusMsg;
  @JsonKey(defaultValue: '')
  @override
  final String reasonMsg;
  @override
  final dynamic data;
  @override
  final Map<String, dynamic> extra;

  @override
  String toString() {
    return 'StatePersonsAdapterWeb.error(statusCode: $statusCode, msg: $msg, statusMsg: $statusMsg, reasonMsg: $reasonMsg, data: $data, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality().equals(other.statusCode, statusCode)) &&
            (identical(other.msg, msg) || const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.statusMsg, statusMsg) ||
                const DeepCollectionEquality().equals(other.statusMsg, statusMsg)) &&
            (identical(other.reasonMsg, reasonMsg) ||
                const DeepCollectionEquality().equals(other.reasonMsg, reasonMsg)) &&
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
  _$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadInProgress(double progress),
    @required TResult data(List<Person> list),
    @required
        TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
            Map<String, dynamic> extra),
  }) {
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return error(statusCode, msg, statusMsg, reasonMsg, this.data, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadInProgress(double progress),
    TResult data(List<Person> list),
    TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
        Map<String, dynamic> extra),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(statusCode, msg, statusMsg, reasonMsg, this.data, extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult data(_Data value),
    @required TResult error(_Error value),
  }) {
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadInProgress(_LoadInProgress value),
    TResult data(_Data value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StatePersonsAdapterWeb {
  const factory _Error(
      {int statusCode,
      String msg,
      String statusMsg,
      String reasonMsg,
      dynamic data,
      Map<String, dynamic> extra}) = _$_Error;

  int get statusCode;
  String get msg;
  String get statusMsg;
  String get reasonMsg;
  dynamic get data;
  Map<String, dynamic> get extra;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

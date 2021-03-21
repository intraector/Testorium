// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'person_details_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatePersonsDetailsRepositoryTearOff {
  const _$StatePersonsDetailsRepositoryTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress(double progress) {
    return _LoadInProgress(
      progress,
    );
  }

// ignore: unused_element
  _Data data(User user) {
    return _Data(
      user,
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
const $StatePersonsDetailsRepository = _$StatePersonsDetailsRepositoryTearOff();

/// @nodoc
mixin _$StatePersonDetailsRepository {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(double progress),
    @required TResult data(User user),
    @required
        TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
            Map<String, dynamic> extra),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(double progress),
    TResult data(User user),
    TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
        Map<String, dynamic> extra),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult data(_Data value),
    @required TResult error(_Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult data(_Data value),
    TResult error(_Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StatePersonsDetailsRepositoryCopyWith<$Res> {
  factory $StatePersonsDetailsRepositoryCopyWith(
          StatePersonDetailsRepository value, $Res Function(StatePersonDetailsRepository) then) =
      _$StatePersonsDetailsRepositoryCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatePersonsDetailsRepositoryCopyWithImpl<$Res>
    implements $StatePersonsDetailsRepositoryCopyWith<$Res> {
  _$StatePersonsDetailsRepositoryCopyWithImpl(this._value, this._then);

  final StatePersonDetailsRepository _value;
  // ignore: unused_field
  final $Res Function(StatePersonDetailsRepository) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$StatePersonsDetailsRepositoryCopyWithImpl<$Res>
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
    return 'StatePersonsDetailsRepository.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(double progress),
    @required TResult data(User user),
    @required
        TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
            Map<String, dynamic> extra),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(double progress),
    TResult data(User user),
    TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
        Map<String, dynamic> extra),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult data(_Data value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult data(_Data value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StatePersonDetailsRepository {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  $Res call({double progress});
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$StatePersonsDetailsRepositoryCopyWithImpl<$Res>
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
    return 'StatePersonsDetailsRepository.loadInProgress(progress: $progress)';
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
    @required TResult initial(),
    @required TResult loadInProgress(double progress),
    @required TResult data(User user),
    @required
        TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
            Map<String, dynamic> extra),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return loadInProgress(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(double progress),
    TResult data(User user),
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
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult data(_Data value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
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

abstract class _LoadInProgress implements StatePersonDetailsRepository {
  const factory _LoadInProgress(double progress) = _$_LoadInProgress;

  double get progress;
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) = __$DataCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$StatePersonsDetailsRepositoryCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Data(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Data implements _Data {
  const _$_Data(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'StatePersonsDetailsRepository.data(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(double progress),
    @required TResult data(User user),
    @required
        TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
            Map<String, dynamic> extra),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return data(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(double progress),
    TResult data(User user),
    TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
        Map<String, dynamic> extra),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult data(_Data value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
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

abstract class _Data implements StatePersonDetailsRepository {
  const factory _Data(User user) = _$_Data;

  User get user;
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
class __$ErrorCopyWithImpl<$Res> extends _$StatePersonsDetailsRepositoryCopyWithImpl<$Res>
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
    return 'StatePersonsDetailsRepository.error(statusCode: $statusCode, msg: $msg, statusMsg: $statusMsg, reasonMsg: $reasonMsg, data: $data, extra: $extra)';
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
    @required TResult initial(),
    @required TResult loadInProgress(double progress),
    @required TResult data(User user),
    @required
        TResult error(int statusCode, String msg, String statusMsg, String reasonMsg, dynamic data,
            Map<String, dynamic> extra),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return error(statusCode, msg, statusMsg, reasonMsg, this.data, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(double progress),
    TResult data(User user),
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
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult data(_Data value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
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

abstract class _Error implements StatePersonDetailsRepository {
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

/// @nodoc
class _$EventPersonDetailsRepositoryTearOff {
  const _$EventPersonDetailsRepositoryTearOff();

// ignore: unused_element
  _LoadData loadData(int id) {
    return _LoadData(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EventPersonDetailsRepository = _$EventPersonDetailsRepositoryTearOff();

/// @nodoc
mixin _$EventPersonDetailsRepository {
  int get id;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadData(int id),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadData(int id),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadData(_LoadData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadData(_LoadData value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $EventPersonDetailsRepositoryCopyWith<EventPersonDetailsRepository> get copyWith;
}

/// @nodoc
abstract class $EventPersonDetailsRepositoryCopyWith<$Res> {
  factory $EventPersonDetailsRepositoryCopyWith(
          EventPersonDetailsRepository value, $Res Function(EventPersonDetailsRepository) then) =
      _$EventPersonDetailsRepositoryCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$EventPersonDetailsRepositoryCopyWithImpl<$Res>
    implements $EventPersonDetailsRepositoryCopyWith<$Res> {
  _$EventPersonDetailsRepositoryCopyWithImpl(this._value, this._then);

  final EventPersonDetailsRepository _value;
  // ignore: unused_field
  final $Res Function(EventPersonDetailsRepository) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
abstract class _$LoadDataCopyWith<$Res> implements $EventPersonDetailsRepositoryCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) then) =
      __$LoadDataCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$LoadDataCopyWithImpl<$Res> extends _$EventPersonDetailsRepositoryCopyWithImpl<$Res>
    implements _$LoadDataCopyWith<$Res> {
  __$LoadDataCopyWithImpl(_LoadData _value, $Res Function(_LoadData) _then)
      : super(_value, (v) => _then(v as _LoadData));

  @override
  _LoadData get _value => super._value as _LoadData;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_LoadData(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$_LoadData implements _LoadData {
  const _$_LoadData(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'EventPersonDetailsRepository.loadData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadData &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LoadDataCopyWith<_LoadData> get copyWith =>
      __$LoadDataCopyWithImpl<_LoadData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadData(int id),
  }) {
    assert(loadData != null);
    return loadData(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadData(int id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadData != null) {
      return loadData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadData(_LoadData value),
  }) {
    assert(loadData != null);
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadData(_LoadData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements EventPersonDetailsRepository {
  const factory _LoadData(int id) = _$_LoadData;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$LoadDataCopyWith<_LoadData> get copyWith;
}

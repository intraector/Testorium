// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String origin,
      String location,
      String image}) {
    return _User(
      id: id,
      name: name,
      status: status,
      species: species,
      gender: gender,
      origin: origin,
      location: location,
      image: image,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id;
  String get name;
  String get status;
  String get species;
  String get gender;
  String get origin;
  String get location;
  String get image;

  @JsonKey(ignore: true)
  $UserCopyWith<Person> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(Person value, $Res Function(Person) then) = _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String origin,
      String location,
      String image});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final Person _value;
  // ignore: unused_field
  final $Res Function(Person) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object status = freezed,
    Object species = freezed,
    Object gender = freezed,
    Object origin = freezed,
    Object location = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as String,
      species: species == freezed ? _value.species : species as String,
      gender: gender == freezed ? _value.gender : gender as String,
      origin: origin == freezed ? _value.origin : origin as String,
      location: location == freezed ? _value.location : location as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) = __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String origin,
      String location,
      String image});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object status = freezed,
    Object species = freezed,
    Object gender = freezed,
    Object origin = freezed,
    Object location = freezed,
    Object image = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as String,
      species: species == freezed ? _value.species : species as String,
      gender: gender == freezed ? _value.gender : gender as String,
      origin: origin == freezed ? _value.origin : origin as String,
      location: location == freezed ? _value.location : location as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.gender,
      this.origin,
      this.location,
      this.image});

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String gender;
  @override
  final String origin;
  @override
  final String location;
  @override
  final String image;

  @override
  String toString() {
    return 'User(id: $id, name: $name, status: $status, species: $species, gender: $gender, origin: $origin, location: $location, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality().equals(other.species, species)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality().equals(other.location, location)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements Person {
  const factory _User(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String origin,
      String location,
      String image}) = _$_User;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get gender;
  @override
  String get origin;
  @override
  String get location;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}

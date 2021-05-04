// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
class _$PersonTearOff {
  const _$PersonTearOff();

// ignore: unused_element
  _Person call(
      {int id = 0,
      String name = '',
      String status = '',
      String species = '',
      String gender = '',
      @CustomConverter() String origin,
      @CustomConverter() String location,
      String image}) {
    return _Person(
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

// ignore: unused_element
  Person fromJson(Map<String, Object> json) {
    return Person.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Person = _$PersonTearOff();

/// @nodoc
mixin _$Person {
  int get id;
  String get name;
  String get status;
  String get species;
  String get gender;
  @CustomConverter()
  String get origin;
  @CustomConverter()
  String get location;
  String get image;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      @CustomConverter() String origin,
      @CustomConverter() String location,
      String image});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

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
abstract class _$PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$PersonCopyWith(_Person value, $Res Function(_Person) then) =
      __$PersonCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      @CustomConverter() String origin,
      @CustomConverter() String location,
      String image});
}

/// @nodoc
class __$PersonCopyWithImpl<$Res> extends _$PersonCopyWithImpl<$Res>
    implements _$PersonCopyWith<$Res> {
  __$PersonCopyWithImpl(_Person _value, $Res Function(_Person) _then)
      : super(_value, (v) => _then(v as _Person));

  @override
  _Person get _value => super._value as _Person;

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
    return _then(_Person(
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

@JsonSerializable()

/// @nodoc
class _$_Person extends _Person {
  const _$_Person(
      {this.id = 0,
      this.name = '',
      this.status = '',
      this.species = '',
      this.gender = '',
      @CustomConverter() this.origin,
      @CustomConverter() this.location,
      this.image})
      : assert(id != null),
        assert(name != null),
        assert(status != null),
        assert(species != null),
        assert(gender != null),
        super._();

  factory _$_Person.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String status;
  @JsonKey(defaultValue: '')
  @override
  final String species;
  @JsonKey(defaultValue: '')
  @override
  final String gender;
  @override
  @CustomConverter()
  final String origin;
  @override
  @CustomConverter()
  final String location;
  @override
  final String image;

  @override
  String toString() {
    return 'Person(id: $id, name: $name, status: $status, species: $species, gender: $gender, origin: $origin, location: $location, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Person &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
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
  _$PersonCopyWith<_Person> get copyWith =>
      __$PersonCopyWithImpl<_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonToJson(this);
  }
}

abstract class _Person extends Person {
  const _Person._() : super._();
  const factory _Person(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      @CustomConverter() String origin,
      @CustomConverter() String location,
      String image}) = _$_Person;

  factory _Person.fromJson(Map<String, dynamic> json) = _$_Person.fromJson;

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
  @CustomConverter()
  String get origin;
  @override
  @CustomConverter()
  String get location;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$PersonCopyWith<_Person> get copyWith;
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'person.freezed.dart';
part 'person.g.dart';

@freezed
abstract class Person with _$Person {
  const Person._();
  const factory Person({
    int id,
    String name,
    String status,
    String species,
    String gender,
    @OriginConverter() String origin,
    @LocationConverter() String location,
    String image,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> map) => _$PersonFromJson(map);
}
// id: map['id'] ?? 0,
// name: map['name'] ?? '',
// status: map['status'] ?? '',
// species: map['species'] ?? '',
// gender: map['gender'] ?? '',
// image: map['image'],
// origin: (map['origin'] ?? {})['name'],
// location: (map['location'] ?? {})['name'],

class OriginConverter implements JsonConverter<String, Map> {
  const OriginConverter();

  @override
  String fromJson(Map json) {
    print('---------- json : $json');
    return (json ?? {})['name'];
  }

  @override
  Map toJson(String value) => {'origin': value};
}

class LocationConverter implements JsonConverter<String, Map> {
  const LocationConverter();

  @override
  String fromJson(Map json) => (json ?? {})['name'];

  @override
  Map toJson(String value) => {'location': value};
}

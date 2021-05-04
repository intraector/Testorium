import 'package:freezed_annotation/freezed_annotation.dart';
part 'person.freezed.dart';

@freezed
abstract class Person with _$Person {
  const Person._();
  const factory Person({
    int id,
    String name,
    String status,
    String species,
    String gender,
    String origin,
    String location,
    String image,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> map) => _$Person(map);
}
// id: map['id'] ?? 0,
// name: map['name'] ?? '',
// status: map['status'] ?? '',
// species: map['species'] ?? '',
// gender: map['gender'] ?? '',
// image: map['image'],
// origin: (map['origin'] ?? {})['name'],
// location: (map['location'] ?? {})['name'],

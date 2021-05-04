import 'package:freezed_annotation/freezed_annotation.dart';
part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const Person._();
  const factory Person({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String status,
    @Default('') String species,
    @Default('') String gender,
    @CustomConverter() required String origin,
    @CustomConverter() required String location,
    String? image,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> map) => _$PersonFromJson(map);
}

class CustomConverter implements JsonConverter<String, Map> {
  const CustomConverter();

  @override
  String fromJson(Map? json) => json?['name'] ?? '';

  @override
  Map toJson(String value) => {'value': value};
}

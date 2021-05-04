import 'package:testorium/core/models/person.dart';

class PersonDetailsConverterWeb {
  Person mapToUser(Map map) {
    return Person(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      status: map['status'] ?? '',
      species: map['species'] ?? '',
      gender: map['gender'] ?? '',
      origin: (map['origin'] ?? {})['name'],
      location: (map['location'] ?? {})['name'],
      image: map['image'],
    );
  }
}

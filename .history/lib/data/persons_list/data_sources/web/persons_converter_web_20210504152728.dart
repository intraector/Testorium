import 'package:Testorium/core/models/person.dart';

class PersonsConverterWeb {
  Person mapToPerson(Map map) {
    return Person(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      status: map['status'] ?? '',
      species: map['species'] ?? '',
      gender: map['gender'] ?? '',
      image: map['image'],
    );
  }
}
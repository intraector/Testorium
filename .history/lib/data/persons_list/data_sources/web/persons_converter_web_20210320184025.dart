import 'package:Testorium/core/models/user.dart';

class PersonsConverterWeb {
  User mapToUser(Map map) {
    return User(
      id: map['id'],
      name: map['name'],
      status: map['status'],
      species: map['species'],
      gender: map['gender'],
      origin: (map['origin'] ?? {})['name'],
      location: (map['origin'] ?? {})['name'],
      image: map['image'],
    );
  }
}

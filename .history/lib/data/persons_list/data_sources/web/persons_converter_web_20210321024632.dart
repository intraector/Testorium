import 'package:testorium/core/models/user.dart';

class PersonsConverterWeb {
  User mapToUser(Map map) {
    return User(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      status: map['status'] ?? '',
      species: map['species'] ?? '',
      gender: map['gender'] ?? '',
      image: map['image'],
    );
  }
}

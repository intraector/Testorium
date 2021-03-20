import 'package:Testorium/core/models/user.dart';

class PersonsConverterWeb {
  static User mapToUser(Map map, {String url = ''}) {
    return User(
      id: map['id'],
      name: map['name'],
      status: map['status'],
      species: map['species'],
      gender: map['gender'],
    );
  }
}

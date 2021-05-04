import 'get_person_details/get_person_details.dart';

class PersonsRepositoryWeb {
  CommandGetPersons getPersons() => CommandGetPersons();
  CommandGetPersonDetails getNewsDetails(int id) => CommandGetPersonDetails(id: id);
}

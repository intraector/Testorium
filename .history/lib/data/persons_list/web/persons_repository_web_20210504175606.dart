import 'get_person_details/get_person_details.dart';
import 'get_persons/get_persons.dart';

class PersonsRepositoryWeb {
  CommandGetPersons getPersons() => CommandGetPersons();
  CommandGetPersonDetails getPersonDetails(int id) => CommandGetPersonDetails(id: id);
}

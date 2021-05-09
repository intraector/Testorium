import 'get_person_details/get_person_details.dart';
import 'get_persons/get_persons.dart';

class PersonsRepositoryWeb {
  CubitGetPersons getPersons() => CubitGetPersons();
  CubitGetPersonDetails getPersonDetails(int id) => CubitGetPersonDetails(id);
}

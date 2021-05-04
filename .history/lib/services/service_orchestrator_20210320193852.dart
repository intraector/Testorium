import 'package:testorium/data/persons/repository/persons_repository.dart';
import 'package:testorium/services/service_locator.dart';

class SrvcOrchestrator {
  void init() {
    ServiceLocator.setup();
    getIt<PersonsRepository>().add(EventPersonsRepository.init());
  }
}

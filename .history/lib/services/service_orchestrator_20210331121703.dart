import 'package:Testorium/data/persons/repository/persons_repository.dart';
import 'package:Testorium/services/service_locator.dart';

class SrvcOrchestrator {
  static void init() {
    ServiceLocator.setup();
    getIt<PersonsRepository>().add(const EventPersonsRepository.loadData());
  }
}

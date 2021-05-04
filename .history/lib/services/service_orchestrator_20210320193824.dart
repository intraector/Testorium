import 'package:testorium/services/service_locator.dart';

class SrvcOrchestrator {
  void init() {
    ServiceLocator.setup();
    getIt.<PersonsRepository>()
  }
}

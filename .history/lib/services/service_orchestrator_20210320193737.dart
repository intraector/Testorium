import 'package:testorium/services/service_locator.dart';

class SrvcOrchestrator {
  Future init() async {
    ServiceLocator.setup();
  }
}

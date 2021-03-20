import 'package:Testorium/services/service_locator.dart';


class SrvcOrchestrator {



  ServiceLocator.setup();

    await Get.find<StorageLocalSource>().init();
    Get.find<UserRepository>()..add(EventUser.init());
  }

  Future appInit() async {
}

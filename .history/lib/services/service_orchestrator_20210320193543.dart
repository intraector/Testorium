import 'dart:async';

class SrvcOrchestrator {
  SrvcOrchestrator() {
    storageInitComplete = _init();
    initComplete = completer.future;
  }
  var completer = Completer();
  Future storageInitComplete;
  Future initComplete;

  Future _init() async {
    await Get.find<StorageLocalSource>().init();
    Get.find<UserRepository>()..add(EventUser.init());
  }

  Future appInit() async {
    Get.find<NewsRepository>().add(EventNewsRepository.init());
    Get.find<EventsRepository>().add(EventEventsRepository.init());
    Get.find<ConcernsSummaryRepository>().add(EventConcernsSummary.init());
    Get.find<ConcernsRepository>().add(EventConcernsRepository.init());
    Get.find<ProposalsRepository>().add(EventProposalsRepository.init());
    Get.find<ProposalsSummaryRepository>().add(EventProposalsSummary.init());
    if (completer != null && !completer.isCompleted) completer.complete();
    Routes.goToRoot;
  }
}

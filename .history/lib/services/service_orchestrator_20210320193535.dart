import 'dart:async';

import 'package:one_click/constants/routes.dart';
import 'package:one_click/data/concerns/repositories/concerns_repository.dart';
import 'package:one_click/data/concerns/repositories/concerns_summary_repository.dart';
import 'package:one_click/data/events/repositories/events_repository.dart';
import 'package:one_click/data/news/repositories/news_repository.dart';
import 'package:one_click/data/proposals/repositories/proposals_repository.dart';
import 'package:one_click/data/proposals/repositories/proposals_summary_repository.dart';
import 'package:one_click/data/storage/data_sources/local/storage_local_source.dart';
import 'package:one_click/data/user/user_repository.dart';
import 'package:get/instance_manager.dart';

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

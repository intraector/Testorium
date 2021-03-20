import 'package:one_click/data/events/repositories/events_data_sources.dart';
import 'package:one_click/data/events/repositories/events_repository.dart';
import 'package:one_click/data/news/repositories/news_data_sources.dart';
import 'package:one_click/data/news/repositories/news_repository.dart';
import 'package:one_click/data/user/data_sources/local/user_local_data_source.dart';
import 'package:one_click/data/concerns/repositories/concerns_data_sources.dart';
import 'package:one_click/data/concerns/repositories/concerns_repository.dart';
import 'package:one_click/data/concerns/repositories/concerns_summary_repository.dart';
import 'package:one_click/data/proposals/repositories/proposals_data_sources.dart';
import 'package:one_click/data/proposals/repositories/proposals_repository.dart';
import 'package:one_click/data/proposals/repositories/proposals_summary_repository.dart';
import 'package:one_click/data/storage/data_sources/local/storage_local_source.dart';
import 'package:one_click/data/user/user_repository.dart';
import 'package:one_click/services/srvc_orchestrator.dart';
import 'package:one_click/ui/_themes/theme_bloc.dart';
import 'package:get/instance_manager.dart';

class ServiceLocator {
  ServiceLocator();
  Future init() {
    Get.put<BlocTheme>(BlocTheme());
    Get.put<StorageLocalSource>(StorageLocalSource());
    Get.put<UserRepository>(UserRepository(UserLocalDataSource(Get.find<StorageLocalSource>())));
    Get.put<NewsRepository>(NewsRepository(NewsDataSources()));
    Get.put<EventsRepository>(EventsRepository(EventsDataSources()));
    Get.put<ConcernsRepository>(ConcernsRepository(ConcernsDataSources()));
    Get.put<ConcernsSummaryRepository>(ConcernsSummaryRepository(ConcernsDataSources()));
    Get.put<ProposalsRepository>(ProposalsRepository(ProposalsDataSources()));
    Get.put<ProposalsSummaryRepository>(ProposalsSummaryRepository(ProposalsDataSources()));
    final orchestrator = SrvcOrchestrator();
    Get.put(orchestrator);
    return orchestrator.storageInitComplete;
  }
}

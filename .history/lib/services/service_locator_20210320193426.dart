import 'package:testorium/data/persons/repository/persons_data_sources.dart';
import 'package:testorium/data/persons/repository/persons_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  ServiceLocator();
  static setup() {
    getIt.registerSingleton<PersonsRepository>(
      PersonsRepository(
        PersonsDataSources(),
      ),
    );
    // Get.put<BlocTheme>(BlocTheme());
    // Get.put<StorageLocalSource>(StorageLocalSource());
    // Get.put<UserRepository>(UserRepository(UserLocalDataSource(Get.find<StorageLocalSource>())));
    // Get.put<NewsRepository>(NewsRepository(NewsDataSources()));
    // Get.put<EventsRepository>(EventsRepository(EventsDataSources()));
    // Get.put<ConcernsRepository>(ConcernsRepository(ConcernsDataSources()));
    // Get.put<ConcernsSummaryRepository>(ConcernsSummaryRepository(ConcernsDataSources()));
    // Get.put<ProposalsRepository>(ProposalsRepository(ProposalsDataSources()));
    // Get.put<ProposalsSummaryRepository>(ProposalsSummaryRepository(ProposalsDataSources()));
    // final orchestrator = SrvcOrchestrator();
    // Get.put(orchestrator);
    // return orchestrator.storageInitComplete;
  }
}

import 'package:Testorium/data/persons_list/repository/persons_data_sources.dart';
import 'package:Testorium/data/persons_list/repository/persons_repository.dart';
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
  }
}

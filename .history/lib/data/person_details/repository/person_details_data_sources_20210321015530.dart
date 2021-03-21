import '../data_sources/web/person_details_adapter_web.dart';
import '../data_sources/web/person_details_converter_web.dart';
import '../data_sources/web/person_details_data_source_web.dart';

class PersonsDataSources {
  final web = PersonsAdapterWeb(
    dataSource: PersonsDataSourceWeb(),
    converter: PersonsConverterWeb(),
  );
}

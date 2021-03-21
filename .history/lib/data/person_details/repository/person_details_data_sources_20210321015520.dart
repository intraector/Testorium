import '../data_sources/web/persons_adapter_web.dart';
import '../data_sources/web/persons_converter_web.dart';
import '../data_sources/web/persons_data_source_web.dart';

class PersonsDataSources {
  final web = PersonsAdapterWeb(
    dataSource: PersonsDataSourceWeb(),
    converter: PersonsConverterWeb(),
  );
}

import 'package:Testorium/data/persons_list/data_sources/web/persons_converter_web.dart';
import 'package:Testorium/data/persons_list/data_sources/web/persons_data_source_web.dart';

import '../data_sources/web/persons_adapter_web.dart';

class ConcernsDataSources {
  final web = PersonsAdapterWeb(
    dataSource: PersonsDataSourceWeb(),
    converter: PersonsConverterWeb(),
  );
}

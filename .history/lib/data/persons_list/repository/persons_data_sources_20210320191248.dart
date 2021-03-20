import 'package:one_click/data/concerns/data_sources/concerns_data_source_interface.dart';
import 'package:one_click/data/concerns/data_sources/web/concerns_web_adapter.dart';

class ConcernsDataSources {
  ConcernsDataSourceInterface web = ConcernsWebAdapter();
}

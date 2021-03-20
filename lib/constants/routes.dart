import 'package:auto_route/annotations.dart';

import '../ui/person_details/person_details.dart';
import '../ui/persons_list/screen_persons_list.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PersonsList, initial: true),
    AutoRoute(page: PersonDetails),
  ],
)
class $AppRouter {}

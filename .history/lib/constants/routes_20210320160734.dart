import 'package:Testorium/ui/persons_list/screen_persons_list.dart';
import 'package:auto_route/annotations.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PersonsList, initial: true),
    AutoRoute(page: BookDetailsPage),
  ],
)
class $AppRouter {}

import 'package:auto_route/annotations.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ScreenPersonsList, initial: true),
    AutoRoute(page: BookDetailsPage),
  ],
)
class $AppRouter {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i4;

import '../dto/person/person.dart' as _i5;
import '../ui/person_details/person_details.dart' as _i3;
import '../ui/persons_list/screen_persons_list.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    PersonsListRoute.name: (entry) {
      var route = entry.routeData.as<PersonsListRoute>();
      return _i1.AdaptivePage(
          entry: entry, child: _i2.PersonsList(key: route.key));
    },
    PersonDetailsRoute.name: (entry) {
      var route = entry.routeData.as<PersonDetailsRoute>();
      return _i1.AdaptivePage(
          entry: entry, child: _i3.PersonDetails(route.user));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<PersonsListRoute>(PersonsListRoute.name,
            path: '/',
            routeBuilder: (match) => PersonsListRoute.fromMatch(match)),
        _i1.RouteConfig<PersonDetailsRoute>(PersonDetailsRoute.name,
            path: '/person-details',
            routeBuilder: (match) => PersonDetailsRoute.fromMatch(match))
      ];
}

class PersonsListRoute extends _i1.PageRouteInfo {
  PersonsListRoute({this.key}) : super(name, path: '/');

  PersonsListRoute.fromMatch(_i1.RouteMatch match)
      : key = null,
        super.fromMatch(match);

  final _i4.Key key;

  static const String name = 'PersonsListRoute';
}

class PersonDetailsRoute extends _i1.PageRouteInfo {
  PersonDetailsRoute({this.user}) : super(name, path: '/person-details');

  PersonDetailsRoute.fromMatch(_i1.RouteMatch match)
      : user = null,
        super.fromMatch(match);

  final _i5.Person user;

  static const String name = 'PersonDetailsRoute';
}

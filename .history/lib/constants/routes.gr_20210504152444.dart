// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i4;

import '../core/models/user.dart' as _i5;
import '../ui/person_details/person_details.dart' as _i3;
import '../ui/persons_list/screen_persons_list.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    PersonsList.name: (entry) {
      var route = entry.routeData.as<PersonsList>();
      return _i1.AdaptivePage(entry: entry, child: _i2.PersonsList(key: route.key));
    },
    PersonDetails.name: (entry) {
      var route = entry.routeData.as<PersonDetails>();
      return _i1.AdaptivePage(entry: entry, child: _i3.PersonDetails(route.user));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<PersonsList>(PersonsList.name,
            path: '/', routeBuilder: (match) => PersonsList.fromMatch(match)),
        _i1.RouteConfig<PersonDetails>(PersonDetails.name,
            path: '/person-details', routeBuilder: (match) => PersonDetails.fromMatch(match))
      ];
}

class PersonsList extends _i1.PageRouteInfo {
  PersonsList({this.key}) : super(name, path: '/');

  PersonsList.fromMatch(_i1.RouteMatch match)
      : key = null,
        super.fromMatch(match);

  final _i4.Key key;

  static const String name = 'PersonsList';
}

class PersonDetails extends _i1.PageRouteInfo {
  PersonDetails({this.user}) : super(name, path: '/person-details');

  PersonDetails.fromMatch(_i1.RouteMatch match)
      : user = null,
        super.fromMatch(match);

  final _i5.Person user;

  static const String name = 'PersonDetails';
}

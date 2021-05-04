// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i2;
import 'package:testorium/dto/person/person.dart' as _i6;
import 'package:testorium/ui/person_details/person_details.dart' as _i4;
import 'package:testorium/ui/persons_list/screen_persons_list.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    PersonsListRoute.name: (routeData) {
      final args =
          routeData.argsAs<PersonsListRouteArgs>(orElse: () => const PersonsListRouteArgs());
      return _i1.AdaptivePage<dynamic>(routeData: routeData, child: _i3.PersonsList(key: args.key));
    },
    PersonDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PersonDetailsRouteArgs>();
      return _i1.AdaptivePage<dynamic>(routeData: routeData, child: _i4.PersonDetails(args.user));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(PersonsListRoute.name, path: '/'),
        _i1.RouteConfig(PersonDetailsRoute.name, path: '/person-details')
      ];
}

class PersonsListRoute extends _i1.PageRouteInfo<PersonsListRouteArgs> {
  PersonsListRoute({_i5.Key key}) : super(name, path: '/', args: PersonsListRouteArgs(key: key));

  static const String name = 'PersonsListRoute';
}

class PersonsListRouteArgs {
  const PersonsListRouteArgs({this.key});

  final _i5.Key key;
}

class PersonDetailsRoute extends _i1.PageRouteInfo<PersonDetailsRouteArgs> {
  PersonDetailsRoute({required _i6.Person user})
      : super(name, path: '/person-details', args: PersonDetailsRouteArgs(user: user));

  static const String name = 'PersonDetailsRoute';
}

class PersonDetailsRouteArgs {
  const PersonDetailsRouteArgs({required this.user});

  final _i6.Person user;
}

import 'dart:io';

import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor(
    options: SailorOptions(
      handleNameNotFoundUI: true,
    ),
  );

  static void createRoutes() {
    sailor.addRoutes([
      SailorRoute(name: Paths.checkAuth, builder: (_, __, ___) => ViewCheckAuth()),
      SailorRoute(name: Paths.cupertinoMain, builder: (_, __, ___) => ViewCupertinoMain()),
      SailorRoute(name: Paths.auth, builder: (_, __, ___) => ViewAuth()),
      SailorRoute(name: Paths.geolocation, builder: (_, __, ___) => ViewGeolocation()),
      SailorRoute(name: Paths.account, builder: (_, __, ___) => ViewAccount()),
      SailorRoute(name: Paths.events, builder: (_, __, ___) => ViewEvents()),
      SailorRoute(
        name: Paths.eventDetails,
        builder: (_, __, params) => ViewEventDetails(params.param<Event>('entity')),
        params: [SailorParam<Event>(name: 'entity')],
      ),
      SailorRoute(name: Paths.home, builder: (_, __, ___) => ViewHome()),
      SailorRoute(name: Paths.news, builder: (_, __, ___) => ViewNews()),
      SailorRoute(
        name: Paths.newsDetails,
        builder: (_, __, params) => ViewNewsDetails(params.param<News>('newsEntity')),
        params: [SailorParam<News>(name: 'newsEntity')],
      ),
      SailorRoute(name: Paths.concerns, builder: (_, __, ___) => ViewConcerns()),
      SailorRoute(
        name: Paths.concernDetails,
        builder: (_, __, params) => ViewConcernDetails(params.param<Concern>('entity')),
        params: [SailorParam<Concern>(name: 'entity')],
      ),
      SailorRoute(name: Paths.createConcern, builder: (_, __, ___) => ViewCreateConcern()),
      SailorRoute(name: Paths.proposals, builder: (_, __, ___) => ViewProposals()),
      SailorRoute(
        name: Paths.proposalDetails,
        builder: (_, __, params) => ViewProposalDetails(params.param<Proposal>('entity')),
        params: [SailorParam<Proposal>(name: 'entity')],
      ),
      SailorRoute(name: Paths.createProposal, builder: (_, __, ___) => ViewCreateProposal()),
      SailorRoute(
          name: Paths.geolocationWithMarker, builder: (_, __, ___) => ViewGeolocationWithMarker()),
    ]);
  }

  static void get goToRoot {
    Routes.sailor.navigate(
      Platform.isAndroid ? Paths.home : Paths.cupertinoMain,
      navigationType: NavigationType.pushAndRemoveUntil,
      removeUntilPredicate: (_) => false,
    );
  }

  static void goOffTo(String path) => Routes.sailor.navigate(
        path,
        navigationType: NavigationType.pushAndRemoveUntil,
        removeUntilPredicate: (_) => false,
      );

  static void goToNewsDetails(News newsEntity) => Routes.sailor.navigate(
        Paths.newsDetails,
        params: {'newsEntity': newsEntity},
      );

  static void goToEventDetails(Event entity) => Routes.sailor.navigate(
        Paths.eventDetails,
        params: {'entity': entity},
      );

  static void goToConcernDetails(Concern entity) => Routes.sailor.navigate(
        Paths.concernDetails,
        params: {'entity': entity},
      );

  static void goToProposalDetails(Proposal entity) => Routes.sailor.navigate(
        Paths.proposalDetails,
        params: {'entity': entity},
      );
}

abstract class Paths {
  static const String home = 'home';
  static const String checkAuth = 'checkAuth';
  static const String cupertinoMain = 'cupertinoMain';
  static const String auth = 'auth';
  static const String events = 'events';
  static const String eventDetails = 'eventDetails';
  static const String news = 'news';
  static const String newsDetails = 'newsDetails';
  static const String concerns = 'concerns';
  static const String concernDetails = 'concernsDetails';
  static const String geolocation = 'geolocation';
  static const String geolocationWithMarker = 'geolocationWithMarker';
  static const String account = 'account';
  static const String createConcern = 'createConcern';
  static const String proposals = 'proposals';
  static const String proposalDetails = 'proposalDetails';
  static const String createProposal = 'createProposal';
}

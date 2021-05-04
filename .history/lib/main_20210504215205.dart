import 'package:Testorium/bloc/persons/bloc_persons.dart';
import 'package:Testorium/data/web/persons/persons_repository_web.dart';
import 'package:Testorium/generated/l10n.dart';
import 'package:Testorium/ui/_themes/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'common/init.dart';
import 'common/routes.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xff3C3E44),
      statusBarIconBrightness: Brightness.light,
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<PersonsRepositoryWeb>(
          create: (_) => PersonsRepositoryWeb(),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<BlocTheme>(
            create: (_) => BlocTheme(),
          ),
          BlocProvider<BlocPersons>(
            create: (context) => BlocPersons(
              RepositoryProvider.of<PersonsRepositoryWeb>(context),
            ),
          ),
        ],
        child: Init(
          child: BlocBuilder<BlocTheme, StateBlocTheme>(
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routeInformationParser: _appRouter.defaultRouteParser(),
                routerDelegate: _appRouter.delegate(),
                title: 'Testorium',
                theme: state.theme.material,
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
              );
            },
          ),
        ),
      ),
    );
  }
}

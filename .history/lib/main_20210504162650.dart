import 'package:testorium/constants/routes.gr.dart';
import 'package:testorium/data/persons/web/persons_repository_web.dart';
import 'package:testorium/generated/l10n.dart';
import 'package:testorium/services/service_orchestrator.dart';
import 'package:testorium/ui/_themes/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SrvcOrchestrator.init();
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
      child: BlocProvider(
        create: (context) => BlocTheme(),
        child: BlocBuilder<BlocTheme, StateTheme>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routeInformationParser: _appRouter.defaultRouteParser(),
              routerDelegate: _appRouter.delegate(),
              title: 'testorium',
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
    );
  }
}

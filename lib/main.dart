import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:oggetto_app_hakathon/styles/styles.dart';
import 'managers/locator.dart';
import 'modules/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: appTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: _appRouter.delegate(
        initialRoutes: [
          AuthorizationScreenRoute(),
        ],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

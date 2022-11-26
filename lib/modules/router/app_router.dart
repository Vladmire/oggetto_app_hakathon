import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/modules/employees/details_screen.dart';
import 'package:oggetto_app_hakathon/modules/employees/employees_list_screen.dart';
import 'package:oggetto_app_hakathon/modules/games/first_game.dart';
import 'package:oggetto_app_hakathon/modules/games/games_screen.dart';
import 'package:oggetto_app_hakathon/modules/games/second_games.dart';
import 'package:oggetto_app_hakathon/modules/games/third_games.dart';
import 'package:oggetto_app_hakathon/modules/profile/profile_screen.dart';
import 'package:oggetto_app_hakathon/modules/profile/settings_screen.dart';
import 'package:oggetto_app_hakathon/modules/registration/authorization_screen.dart';
import 'package:oggetto_app_hakathon/modules/registration/registration_screen.dart';

import '../../models/enums.dart';
import '../employees/departments_screen.dart';
import '../main_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      page: RegistrationScreen,
      path: 'registration',
    ),
    AutoRoute(
      page: AuthorizationScreen,
      path: 'authorization',
    ),
    AutoRoute(
      page: MainScreen,
      path: 'main',
      children: [
        AutoRoute(
          path: 'employees',
          name: 'EmployeesRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: DepartmentsScreen),
            AutoRoute(path: 'employees', page: EmployeesScreen),
            AutoRoute(path: 'details', page: DetailsScreen),
          ],
        ),
        AutoRoute(
            path: 'games',
            name: 'GamesRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(path: '', page: GamesScreen),
              AutoRoute(path: 'multi', page: FirstGameScreen),
              AutoRoute(path: 'single', page: SecondGameScreen),
              AutoRoute(path: 'contact', page: ThirdGameScreen),
            ]
        ),
        AutoRoute(
            path: 'profile',
            name: 'ProfileRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(path: '', page: ProfileScreen),
              AutoRoute(path: 'details', page: SettingsScreen),
            ]
        ),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
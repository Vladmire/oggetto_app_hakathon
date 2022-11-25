// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      final args = routeData.argsAs<MainScreenRouteArgs>(
          orElse: () => const MainScreenRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: MainScreen(key: args.key),
      );
    },
    EmployeesRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    GamesRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    DepartmentsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DepartmentsScreen(),
      );
    },
    EmployeesScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmployeesScreen(),
      );
    },
    DetailsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DetailsScreen(),
      );
    },
    GamesScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const GamesScreen(),
      );
    },
    FirstGameScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FirstGameScreen(),
      );
    },
    SecondGameScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SecondGameScreen(),
      );
    },
    ThirdGameScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ThirdGameScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    SettingsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          MainScreenRoute.name,
          path: 'main',
          children: [
            RouteConfig(
              EmployeesRouter.name,
              path: 'employees',
              parent: MainScreenRoute.name,
              children: [
                RouteConfig(
                  DepartmentsScreenRoute.name,
                  path: '',
                  parent: EmployeesRouter.name,
                ),
                RouteConfig(
                  EmployeesScreenRoute.name,
                  path: 'employees',
                  parent: EmployeesRouter.name,
                ),
                RouteConfig(
                  DetailsScreenRoute.name,
                  path: 'details',
                  parent: EmployeesRouter.name,
                ),
              ],
            ),
            RouteConfig(
              GamesRouter.name,
              path: 'games',
              parent: MainScreenRoute.name,
              children: [
                RouteConfig(
                  GamesScreenRoute.name,
                  path: '',
                  parent: GamesRouter.name,
                ),
                RouteConfig(
                  FirstGameScreenRoute.name,
                  path: 'multi',
                  parent: GamesRouter.name,
                ),
                RouteConfig(
                  SecondGameScreenRoute.name,
                  path: 'single',
                  parent: GamesRouter.name,
                ),
                RouteConfig(
                  ThirdGameScreenRoute.name,
                  path: 'contact',
                  parent: GamesRouter.name,
                ),
              ],
            ),
            RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: MainScreenRoute.name,
              children: [
                RouteConfig(
                  ProfileScreenRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                RouteConfig(
                  SettingsScreenRoute.name,
                  path: 'details',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [MainScreen]
class MainScreenRoute extends PageRouteInfo<MainScreenRouteArgs> {
  MainScreenRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MainScreenRoute.name,
          path: 'main',
          args: MainScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MainScreenRoute';
}

class MainScreenRouteArgs {
  const MainScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MainScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class EmployeesRouter extends PageRouteInfo<void> {
  const EmployeesRouter({List<PageRouteInfo>? children})
      : super(
          EmployeesRouter.name,
          path: 'employees',
          initialChildren: children,
        );

  static const String name = 'EmployeesRouter';
}

/// generated route for
/// [EmptyRouterPage]
class GamesRouter extends PageRouteInfo<void> {
  const GamesRouter({List<PageRouteInfo>? children})
      : super(
          GamesRouter.name,
          path: 'games',
          initialChildren: children,
        );

  static const String name = 'GamesRouter';
}

/// generated route for
/// [EmptyRouterPage]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter({List<PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [DepartmentsScreen]
class DepartmentsScreenRoute extends PageRouteInfo<void> {
  const DepartmentsScreenRoute()
      : super(
          DepartmentsScreenRoute.name,
          path: '',
        );

  static const String name = 'DepartmentsScreenRoute';
}

/// generated route for
/// [EmployeesScreen]
class EmployeesScreenRoute extends PageRouteInfo<void> {
  const EmployeesScreenRoute()
      : super(
          EmployeesScreenRoute.name,
          path: 'employees',
        );

  static const String name = 'EmployeesScreenRoute';
}

/// generated route for
/// [DetailsScreen]
class DetailsScreenRoute extends PageRouteInfo<void> {
  const DetailsScreenRoute()
      : super(
          DetailsScreenRoute.name,
          path: 'details',
        );

  static const String name = 'DetailsScreenRoute';
}

/// generated route for
/// [GamesScreen]
class GamesScreenRoute extends PageRouteInfo<void> {
  const GamesScreenRoute()
      : super(
          GamesScreenRoute.name,
          path: '',
        );

  static const String name = 'GamesScreenRoute';
}

/// generated route for
/// [FirstGameScreen]
class FirstGameScreenRoute extends PageRouteInfo<void> {
  const FirstGameScreenRoute()
      : super(
          FirstGameScreenRoute.name,
          path: 'multi',
        );

  static const String name = 'FirstGameScreenRoute';
}

/// generated route for
/// [SecondGameScreen]
class SecondGameScreenRoute extends PageRouteInfo<void> {
  const SecondGameScreenRoute()
      : super(
          SecondGameScreenRoute.name,
          path: 'single',
        );

  static const String name = 'SecondGameScreenRoute';
}

/// generated route for
/// [ThirdGameScreen]
class ThirdGameScreenRoute extends PageRouteInfo<void> {
  const ThirdGameScreenRoute()
      : super(
          ThirdGameScreenRoute.name,
          path: 'contact',
        );

  static const String name = 'ThirdGameScreenRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileScreenRoute extends PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [SettingsScreen]
class SettingsScreenRoute extends PageRouteInfo<void> {
  const SettingsScreenRoute()
      : super(
          SettingsScreenRoute.name,
          path: 'details',
        );

  static const String name = 'SettingsScreenRoute';
}

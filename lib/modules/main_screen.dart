import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:oggetto_app_hakathon/modules/router/app_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return AutoTabsScaffold(
      routes: const [
        EmployeesRouter(),
        GamesRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.videogame_asset), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        );
      },
    );
  }
}

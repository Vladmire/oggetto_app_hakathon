import 'package:get_it/get_it.dart';
import 'package:oggetto_app_hakathon/managers/users_manager.dart';

import '../utils/custom_widget_utils.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => CustomWidgetUtils());
  locator.registerLazySingleton(() => UsersManager());

  return locator.allReady();

}

import 'package:get_it/get_it.dart';
import 'package:oggetto_app_hakathon/managers/users_manager.dart';

import '../utils/custom_widget_utils.dart';
import 'preference_manager.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerSingletonAsync<PreferenceManager>(() async {
    final configService = PreferenceManager();
    await configService.init();
    return configService;
  });

  locator.registerLazySingleton(() => CustomWidgetUtils());
  locator.registerLazySingleton(() => UsersManager());

  return locator.allReady();

}

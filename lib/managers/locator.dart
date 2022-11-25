import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // locator.registerSingletonAsync<PreferenceManager>(() async {
  //   final configService = PreferenceManager();
  //   await configService.init();
  //   return configService;
  // });

  // locator.registerLazySingleton(() => QRCodeManager());
  //
  // locator.registerFactory(() => SettingsViewModel());

  return locator.allReady();

}

import 'package:get_it/get_it.dart';

import '../utils/custom_widget_utils.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => CustomWidgetUtils());

  return locator.allReady();

}

import 'package:get_it/get_it.dart';
import '../navigation/app_navigation.dart';

final getIt = GetIt.instance;

void setupInjection() {
  getIt.registerLazySingleton<AppMainNavigator>(() => AppMainNavigator());
}

import 'package:get_it/get_it.dart';
import 'package:powerbank/config/routes/router.dart';

final locator = GetIt.instance;
Future<void> setupLocator() async {
  locator.registerSingleton<AppRouter>(AppRouter());
}

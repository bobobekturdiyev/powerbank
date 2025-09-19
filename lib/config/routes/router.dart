import 'package:auto_route/auto_route.dart';
import 'package:powerbank/config/routes/route_path.dart';
import 'package:powerbank/config/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: PaymentRoute.page, path: RoutePath.payment, initial: true),
    AutoRoute(page: SuccessRoute.page, path: RoutePath.success),
  ];
}

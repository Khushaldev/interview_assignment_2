import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(
  generateForDir: ['lib/'],
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: BottomNavRoute.page,
      initial: true,
      children: [
        AutoRoute(
          page: EmptyShellRoute('home-tab'),
          children: [
            AutoRoute(path: '', page: HomeRoute.page),
            AutoRoute(path: 'add-expense', page: AddExpenseRoute.page),
          ],
        ),
        AutoRoute(
          page: EmptyShellRoute('stats-tab'),
          children: [
            AutoRoute(path: '', page: StatsRoute.page),
          ],
        ),
        AutoRoute(
          page: EmptyShellRoute('settings-tab'),
          children: [
            AutoRoute(path: '', page: SettingsRoute.page),
          ],
        ),
      ],
    ),
  ];
}

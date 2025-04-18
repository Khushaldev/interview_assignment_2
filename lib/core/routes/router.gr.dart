// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:interview_assignment_app/features/add_expense/add_expense_page.dart'
    as _i1;
import 'package:interview_assignment_app/features/bottom_nav/bottom_nav_page.dart'
    as _i2;
import 'package:interview_assignment_app/features/home/home_page.dart' as _i3;
import 'package:interview_assignment_app/features/settings/settings_page.dart'
    as _i4;
import 'package:interview_assignment_app/features/stats/stats_page.dart' as _i5;

/// generated route for
/// [_i1.AddExpensePage]
class AddExpenseRoute extends _i6.PageRouteInfo<void> {
  const AddExpenseRoute({List<_i6.PageRouteInfo>? children})
    : super(AddExpenseRoute.name, initialChildren: children);

  static const String name = 'AddExpenseRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddExpensePage();
    },
  );
}

/// generated route for
/// [_i2.BottomNavPage]
class BottomNavRoute extends _i6.PageRouteInfo<void> {
  const BottomNavRoute({List<_i6.PageRouteInfo>? children})
    : super(BottomNavRoute.name, initialChildren: children);

  static const String name = 'BottomNavRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.BottomNavPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute({List<_i6.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SettingsPage();
    },
  );
}

/// generated route for
/// [_i5.StatsPage]
class StatsRoute extends _i6.PageRouteInfo<void> {
  const StatsRoute({List<_i6.PageRouteInfo>? children})
    : super(StatsRoute.name, initialChildren: children);

  static const String name = 'StatsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.StatsPage();
    },
  );
}

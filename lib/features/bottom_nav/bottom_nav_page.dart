import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/bottom_nav_cubit.dart';
import '../../core/routes/router.gr.dart';

@RoutePage()
class BottomNavPage extends StatelessWidget {
  const BottomNavPage({super.key});

  final _tabs = const [
    HomeRoute(),
    StatsRoute(),
    SettingsRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: BlocBuilder<BottomNavCubit, int>(
        builder: (context, index) {
          return AutoTabsScaffold(
            routes: _tabs,
            animationDuration: Duration(milliseconds: 300),
            bottomNavigationBuilder: (_, tabsRouter) {
              return BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: (i) {
                  context.read<BottomNavCubit>().changeTab(i);
                  tabsRouter.setActiveIndex(i);
                },
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
                  BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

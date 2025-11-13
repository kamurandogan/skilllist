import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/bottom_nav_cubit.dart';
import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';
import '../routes/app_router.dart';

class AppBottomNav extends StatefulWidget {
  const AppBottomNav({super.key});

  @override
  State<AppBottomNav> createState() => _AppBottomNavState();
}

class _AppBottomNavState extends State<AppBottomNav> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Sync cubit with current route on init and when route changes
    _updateNavIndexFromRoute();
  }

  void _updateNavIndexFromRoute() {
    final location = GoRouterState.of(context).uri.path;
    final cubit = context.read<BottomNavCubit>();

    var index = 0;
    if (location.startsWith(AppRouter.tasks)) {
      index = 0;
    } else if (location.startsWith(AppRouter.search)) {
      index = 1;
    } else if (location.startsWith(AppRouter.chat)) {
      index = 2;
    } else if (location.startsWith(AppRouter.profile)) {
      index = 3;
    }

    if (cubit.state != index) {
      cubit.changeTab(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, currentIndex) {
        return NavigationBar(
          backgroundColor: AppColors.backgroundColor,
          height: AppDimensions.bottomNavHeight,

          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            context.read<BottomNavCubit>().changeTab(index);

            // GoRouter ile route değiştir
            switch (index) {
              case 0:
                return context.go(AppRouter.tasks);
              case 1:
                return context.go(AppRouter.search);
              case 2:
                return context.go(AppRouter.chat);
              case 3:
                return context.go(AppRouter.profile);
            }
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.task_outlined),
              selectedIcon: Icon(Icons.task),
              label: 'Tasks',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined),
              selectedIcon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_bubble_outline),
              selectedIcon: Icon(Icons.chat_bubble),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/app/constants/platform.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

@RoutePage(name: 'home')
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final userId = context.select((AuthBloc value) => value.state.user!.$id);
    final adaptivePlatform = GeatPlatforms().isWeb || !GeatPlatforms().isMobile;

    return WillPopScope(
      onWillPop: () async => false,
      child: AutoTabsRouter.tabBar(
        routes: [
          const FeedN(),
          const SearchNav(),
          const NotificationNav(),
          ProfileNav(
            children: [
              Profile(uid: userId, isProfilePage: true),
            ],
          ),
        ],
        builder: (context, child, tabController) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Container(
                //color: theme.colorScheme.secondary,
                child: adaptivePlatform
                    ? TabBar(
                        controller: tabController,
                        indicatorColor: theme.colorScheme.secondary,
                        indicatorSize: TabBarIndicatorSize.label,
                        unselectedLabelColor: theme.colorScheme.primary,
                        labelColor: theme.colorScheme.secondary,
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        tabs: const [
                          Tab(
                            text: 'Feeds',
                          ),
                          Tab(
                            text: 'Search',
                          ),
                          Tab(
                            text: 'Notifications',
                          ),
                          Tab(
                            text: 'Account',
                          ),
                        ],
                      )
                    : null,
              ),
            ),
            body: child,
            bottomNavigationBar: adaptivePlatform
                ? null
                : SlidingClippedNavBar(
                    selectedIndex: tabsRouter.activeIndex,
                    onButtonPressed: tabsRouter.setActiveIndex,
                    activeColor: theme.colorScheme.primary,
                    inactiveColor: theme.colorScheme.secondary,
                    backgroundColor: theme.scaffoldBackgroundColor,
                    barItems: [
                      BarItem(
                        icon: Icons.local_fire_department_sharp,
                        title: 'Feeds',
                      ),
                      BarItem(
                        icon: Icons.search,
                        title: 'Search',
                      ),
                      BarItem(
                        icon: Icons.notifications_none_sharp,
                        title: 'Notifications',
                      ),
                      BarItem(
                        icon: Icons.person,
                        title: 'Account',
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}




// @RoutePage(name: 'home')
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final userId = context.select((AuthBloc value) => value.state.user!.$id);

//     return WillPopScope(
//       onWillPop: () async => false,
//       child: AutoTabsScaffold(
//         backgroundColor: theme.scaffoldBackgroundColor,
//         primary: false,
//         routes: [
//           const FeedN(),
//           const SearchNav(),
//           const NotificationNav(),
//           ProfileNav(
//             children: [
//               Profile(uid: userId, isProfilePage: true),
//             ],
//           ),
//         ],
//         extendBody: true,
//         bottomNavigationBuilder: (_, tabsRouter) {
//           return SlidingClippedNavBar(
//             selectedIndex: tabsRouter.activeIndex,
//             onButtonPressed: tabsRouter.setActiveIndex,
//             activeColor: theme.colorScheme.primary,
//             inactiveColor: theme.colorScheme.secondary,
//             backgroundColor: theme.scaffoldBackgroundColor,
//             barItems: [
//               BarItem(
//                 icon: Icons.local_fire_department_sharp,
//                 title: 'Feeds',
//               ),
//               BarItem(
//                 icon: Icons.search,
//                 title: 'Search',
//               ),
//               BarItem(
//                 icon: Icons.notifications_none_sharp,
//                 title: 'Notifications',
//               ),
//               BarItem(
//                 icon: Icons.person,
//                 title: 'Account',
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }


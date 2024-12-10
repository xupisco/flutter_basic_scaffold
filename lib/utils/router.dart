import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'router_animation.dart';
import '../models/routes.dart';

import '../pages/_scaffold.dart';
import '../pages/home.dart';
import '../pages/delivery.dart';
import '../pages/extras.dart';
import '../pages/coupons.dart';
import '../pages/extras/account.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.homePage,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => BaseScaffold(
        navigationShell: navigationShell,
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.homePage,
              builder: (context, state) => const HomePage(),
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.couponsPage,
              builder: (context, state) => const CouponsPage(),
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.deliveryPage,
              builder: (context, state) => const DeliveryPage(),
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.extrasPage,
              builder: (context, state) => const ExtrasPage(),
              routes: [
                GoRoute(
                  path: Routes.accountPage,
                  pageBuilder: (context, state) => RouteTransition(child: AccountPage()),
                )
              ]
            )
          ]
        ),
      ],
    )
  ],
);

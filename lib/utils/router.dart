import 'package:bobs_app_v2/pages/search.dart';
import 'package:bobs_app_v2/pages/settings.dart';
import 'package:bobs_app_v2/pages/stuff.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/routes.dart';
import '../pages/_scaffold.dart';
import '../pages/home.dart';


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
              path: Routes.stuffPage,
              builder: (context, state) => const StuffPage(),
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.searchPage,
              builder: (context, state) => const SearchPage(),
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.settingsPage,
              builder: (context, state) => const SettingsPage(),
            )
          ]
        ),
      ],
    )
  ],
);

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../ui/theme/bobs_theme.dart';
import '../models/destination.dart';


class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('BaseScaffold'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
            statusBarColor: BobsColors.primary,
            systemNavigationBarColor: BobsColors.primary),
        child: Scaffold(
          body: navigationShell,
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 0.75))
              ],
            ),
            child: NavigationBar(
              elevation: 8.0,
              shadowColor: Colors.black,
              selectedIndex: navigationShell.currentIndex,
              onDestinationSelected: navigationShell.goBranch,
              indicatorColor: Colors.white,
              backgroundColor: BobsColors.primary,
              destinations: destinations
                  .map((destination) => NavigationDestination(
                        icon: Icon(
                          destination.icon,
                          color: Colors.white,
                        ),
                        label: destination.label.toUpperCase(),
                        selectedIcon: Icon(
                          destination.icon,
                          color: BobsColors.primary,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      );
}

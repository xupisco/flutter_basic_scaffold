import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


// Pages transition class, default to slide
class RouteTransition extends CustomTransitionPage<void> {
  RouteTransition(
      {super.key, required super.child, String transitionType = 'slide'})
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (_, animation, __, child) {
            if (transitionType == 'slide') {
              return SlideTransition(
                position: animation.drive(
                  Tween(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).chain(
                    CurveTween(curve: Curves.easeOutExpo),
                  ),
                ),
                child: child,
              );
            } else {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            }
          },
        );
}

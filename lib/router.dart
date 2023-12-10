import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:hfut_hole_flutter/page/hello/index.dart';
import 'package:hfut_hole_flutter/page/home/index.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Hello(),
    ),
    GoRoute(
      path: "/home",
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const Home(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child);
          },
        );
      },
    ),
  ],
);

import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:hfut_hole_flutter/model/app_profile.dart';
import 'package:hfut_hole_flutter/page/hello/index.dart';
import 'package:hfut_hole_flutter/page/home/index.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        // TODO 测试token有效性
        if (AppProfile.autoLogin && AppProfile.token.isNotEmpty) {
          return const Home();
        } else {
          return const Hello();
        }
      },
    ),
    GoRoute(
      path: "/hello",
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const Hello(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child);
          },
        );
      },
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

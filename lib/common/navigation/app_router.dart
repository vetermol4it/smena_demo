import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:smena_demo/common/navigation/home_tabs.dart';
import 'package:smena_demo/common/navigation/routes.dart';
import 'package:smena_demo/features/home/presentation/home_screen.dart';

@injectable
class AppRouter {
  final router = GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        name: Routes.root,
        path: '/',
        redirect: (state) => state.namedLocation(Routes.home, params: {'tab': HomeTabs.menu.name}),
      ),
      GoRoute(
        name: Routes.home,
        path: '/home/:tab(${HomeTabs.menu.name}|${HomeTabs.cart.name})',
        pageBuilder: (context, state) {
          final HomeTabs tab = HomeTabs.fromString(state.params['tab'] ?? HomeTabs.menu.name);
          return MaterialPage<void>(
            key: state.pageKey,
            child: HomeScreen(tab: tab),
          );
        },
      ),
      GoRoute(
        name: Routes.menu,
        path: '/menu',
        redirect: (state) => state.namedLocation(Routes.home, params: {'tab': HomeTabs.menu.name}),
      ),
      GoRoute(
        name: Routes.cart,
        path: '/cart',
        redirect: (state) => state.namedLocation(Routes.home, params: {'tab': HomeTabs.cart.name}),
      ),
    ],
  );
}

import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:smena_demo/common/models/menu_category.dart';
import 'package:smena_demo/common/navigation/routes.dart';
import 'package:smena_demo/features/cart/presentation/cart_screen.dart';
import 'package:smena_demo/features/home/presentation/home_screen.dart';
import 'package:smena_demo/features/menu/presentation/category_screen/category_screen.dart';
import 'package:smena_demo/features/menu/presentation/menu_screen.dart';

@injectable
class AppRouter {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: Routes.menu,
                path: '/',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: MenuScreen(),
                ),
                routes: [
                  GoRoute(
                    name: Routes.category,
                    path: 'category',
                    builder: (context, state) => CategoryScreen(category: state.extra as MenuCategory),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: Routes.cart,
                path: '/cart',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: CartScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smena_demo/common/di/init_di.dart';
import 'package:smena_demo/features/cart/domain/cubit/cart_cubit.dart';
import 'package:smena_demo/l10n/app_sctrings.dart';

class HomeScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const HomeScreen({
    required this.navigationShell,
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _goBranch(int index) => widget.navigationShell.goBranch(
        index,
        initialLocation: index == widget.navigationShell.currentIndex,
      );

  final _cartCubit = getIt<CartCubit>();

  @override
  void initState() {
    _cartCubit.fetchItems();
    super.initState();
  }

  @override
  void dispose() {
    _cartCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cartCubit,
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: widget.navigationShell.currentIndex,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.account_balance),
              label: AppStrings.of(context).homeMenuTab,
            ),
            NavigationDestination(
              icon: const Icon(Icons.shopping_cart),
              label: AppStrings.of(context).homeCartTab,
            ),
          ],
          backgroundColor: Colors.white,
          onDestinationSelected: _goBranch,
        ),
        body: widget.navigationShell,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smena_demo/l10n/app_sctrings.dart';

class HomeScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const HomeScreen({
    required this.navigationShell,
    super.key,
  });

  void _goBranch(int index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
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
      body: navigationShell,
    );
  }
}

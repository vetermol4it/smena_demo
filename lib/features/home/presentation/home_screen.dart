import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smena_demo/common/di/init_di.dart';
import 'package:smena_demo/common/ui_kit/assets.gen.dart';
import 'package:smena_demo/features/cart/domain/cubit/cart_cubit.dart';
import 'package:smena_demo/features/home/presentation/widgets/cart_nav_bar_icon.dart';
import 'package:smena_demo/features/home/presentation/widgets/nav_bar_icon.dart';
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.navigationShell.currentIndex,
          elevation: 0,
          onTap: _goBranch,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: NavBarIcon(
                icon: Assets.icons.menu,
                title: AppStrings.of(context).homeMenuTab,
                isActive: widget.navigationShell.currentIndex == 0,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: CartNavBarIcon(
                isActive: widget.navigationShell.currentIndex == 1,
              ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: widget.navigationShell,
      ),
    );
  }

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smena_demo/common/navigation/home_tabs.dart';
import 'package:smena_demo/common/navigation/routes.dart';
import 'package:smena_demo/features/cart/presentation/cart_screen.dart';
import 'package:smena_demo/features/menu/presentation/menu_screen.dart';

class HomeScreen extends StatefulWidget {
  final int index;

  HomeScreen({required HomeTabs tab, super.key}) : index = tab.index;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.index;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Еда'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Корзина'),
        ],
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            switch (index) {
              case 0:
                context.goNamed(Routes.menu);
                break;
              case 1:
                context.goNamed(Routes.cart);
                break;
            }
          });
        },
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          MenuScreen(),
          CartScreen(),
        ],
      ),
    );
  }
}

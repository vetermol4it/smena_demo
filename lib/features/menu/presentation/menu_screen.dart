import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smena_demo/common/di/init_di.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/features/menu/domain/cubit/menu_cubit.dart';
import 'package:smena_demo/features/menu/domain/cubit/menu_state.dart';
import 'package:smena_demo/features/menu/presentation/widgets/menu_category_card.dart';
import 'package:smena_demo/features/menu/presentation/widgets/menu_screen_error_body.dart';
import 'package:smena_demo/features/menu/presentation/widgets/menu_screen_loading_body.dart';
import 'package:smena_demo/l10n/app_sctrings.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final _cubit = getIt<MenuCubit>();

  @override
  void initState() {
    _cubit.fetchMenu();
    super.initState();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        shadowColor: Colors.transparent,
        title: Text(
          AppStrings.of(context).menuScreenTitle,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: BlocBuilder<MenuCubit, MenuState>(
        bloc: _cubit,
        builder: (context, state) {
          if (state is MenuLoadingState) {
            return const MenuScreenLoadingBody();
          } else if (state is MenuErrorState) {
            return MenuScreenErrorBody(
              onTryAgain: () => _cubit.fetchMenu(),
            );
          } else if (state is MenuReadyState) {
            return GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              itemCount: state.categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => MenuCategoryCard(
                item: state.categories[index],
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}

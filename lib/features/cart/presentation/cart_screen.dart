import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smena_demo/common/navigation/routes.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/features/cart/domain/cubit/cart_cubit.dart';
import 'package:smena_demo/features/cart/domain/cubit/cart_state.dart';
import 'package:smena_demo/features/cart/presentation/widgets/cart_item_card.dart';
import 'package:smena_demo/l10n/app_sctrings.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.textPrimary,
          ),
          onPressed: () => context.goNamed(Routes.menu),
        ),
        title: Text(
          AppStrings.of(context).cartScreenTitle,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (_, state) {
          if (state.items.isEmpty) {
            return Center(
              child: Text(
                AppStrings.of(context).emptyCartPlaceholder,
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (_, i) => CartItemCard(item: state.items[i]),
          );
        },
      ),
    );
  }
}

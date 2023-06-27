import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/common/ui_kit/assets.gen.dart';
import 'package:smena_demo/common/ui_kit/widgets/app_interaction_detector.dart';
import 'package:smena_demo/features/cart/domain/cubit/cart_cubit.dart';
import 'package:smena_demo/features/cart/domain/models/cart_item.dart';

class CartItemCounter extends StatelessWidget {
  final CartItem item;

  const CartItemCounter({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 40,
      decoration: ShapeDecoration(
        color: AppColors.buttonSecondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        children: [
          AppInteractionDetector(
            onTap: () {
              context.read<CartCubit>().removeItem(item);
            },
            child: SizedBox(
              width: 40,
              height: 40,
              child: Assets.icons.cartDecrement.svg(
                width: 12,
                height: 12,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          const Spacer(),
          Text(
            item.count.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          AppInteractionDetector(
            onTap: () {
              context.read<CartCubit>().addItem(item.product);
            },
            child: SizedBox(
              width: 40,
              height: 40,
              child: Assets.icons.cartIncrement.svg(
                width: 12,
                height: 12,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

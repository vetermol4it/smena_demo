import 'package:flutter/material.dart';
import 'package:smena_demo/common/models/menu_item.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/common/ui_kit/widgets/app_interaction_detector.dart';
import 'package:smena_demo/features/menu/presentation/category_screen/widgets/add_to_card_button.dart';

class MenuItemCard extends StatelessWidget {
  final MenuItem item;

  const MenuItemCard({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppInteractionDetector(
      onTap: () {},
      child: Container(
        width: double.maxFinite,
        height: 230,
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: AppColors.cart,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: const [
            BoxShadow(
              color: AppColors.cartShadow,
              blurRadius: 30,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              item.imageUrl,
              height: 98,
            ),
            const SizedBox(height: 10),
            Text(
              item.name,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontSize: 14,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  '${item.cost} ₽',
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                AddToCardButton(item: item),
              ],
            )
          ],
        ),
      ),
    );
  }
}

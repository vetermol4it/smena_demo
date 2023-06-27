import 'package:flutter/material.dart';
import 'package:smena_demo/common/models/menu_item.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/features/menu/presentation/category_screen/widgets/add_to_card_button.dart';
import 'package:smena_demo/l10n/app_sctrings.dart';

class AboutItemBottomSheet extends StatelessWidget {
  final MenuItem item;
  final VoidCallback onAddButtonTap;

  const AboutItemBottomSheet({
    required this.item,
    required this.onAddButtonTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: AppColors.background,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Container(
              width: 40,
              height: 4,
              decoration: ShapeDecoration(
                color: AppColors.bottomSheetDrag,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Image.network(
              item.imageUrl,
              height: 220,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                item.name,
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Text(
                  '${item.cost} ₽',
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                AddToCardButton.withTitle(
                  title: AppStrings.of(context).addToCartButtonTitle,
                  item: item,
                  onTap: onAddButtonTap,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                item.description,
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

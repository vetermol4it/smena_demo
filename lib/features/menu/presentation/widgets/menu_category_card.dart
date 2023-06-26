import 'package:flutter/material.dart';
import 'package:smena_demo/common/models/menu_category.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/common/ui_kit/widgets/app_interaction_detector.dart';

class MenuCategoryCard extends StatelessWidget {
  final MenuCategory item;

  const MenuCategoryCard({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppInteractionDetector(
      onTap: () {},
      child: Container(
        width: double.maxFinite,
        height: 175,
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
          children: [
            Image.network(
              item.imageUrl,
              height: 123,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 15,
              ),
              child: SizedBox(
                height: 38,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item.name,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

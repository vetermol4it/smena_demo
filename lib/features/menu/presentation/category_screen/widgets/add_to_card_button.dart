import 'package:flutter/material.dart';
import 'package:smena_demo/common/models/menu_item.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/common/ui_kit/assets.gen.dart';
import 'package:smena_demo/common/ui_kit/widgets/app_interaction_detector.dart';

class AddToCardButton extends StatelessWidget {
  final MenuItem item;
  final String? title;
  final VoidCallback onTap;

  const AddToCardButton({
    required this.item,
    required this.onTap,
    super.key,
  }) : title = null;

  const AddToCardButton.withTitle({
    required this.item,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppInteractionDetector(
      onTap: onTap,
      child: Container(
        width: title == null ? 85 : 120,
        height: title == null ? 36 : 50,
        decoration: ShapeDecoration(
          color: AppColors.buttonPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          shadows: const [
            BoxShadow(
              color: AppColors.buttonPrimaryShadow,
              blurRadius: 20,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: title != null
            ? Center(
                child: Text(
                  title ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.textInverted,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            : Assets.icons.plus.svg(
                height: 10,
                width: 10,
                fit: BoxFit.scaleDown,
              ),
      ),
    );
  }
}

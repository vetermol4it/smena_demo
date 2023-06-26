import 'package:flutter/material.dart';
import 'package:smena_demo/common/models/menu_item.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/common/ui_kit/assets.gen.dart';
import 'package:smena_demo/common/ui_kit/widgets/app_interaction_detector.dart';

class AddToCardButton extends StatelessWidget {
  final MenuItem item;

  const AddToCardButton({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppInteractionDetector(
      onTap: () {},
      child: Container(
        width: 85,
        height: 36,
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
        child: Assets.icons.plus.svg(
          height: 10,
          width: 10,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

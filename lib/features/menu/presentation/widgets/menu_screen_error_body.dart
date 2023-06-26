import 'package:flutter/material.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/common/ui_kit/widgets/app_interaction_detector.dart';
import 'package:smena_demo/l10n/app_sctrings.dart';

class MenuScreenErrorBody extends StatelessWidget {
  final VoidCallback onTryAgain;

  const MenuScreenErrorBody({
    required this.onTryAgain,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppStrings.of(context).menuErrorBodyTitle,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          AppInteractionDetector(
            onTap: onTryAgain,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 38,
                vertical: 13,
              ),
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
              child: Text(
                AppStrings.of(context).menuErrorBodyButtonTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.textInverted,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';

class MenuScreenLoadingBody extends StatelessWidget {
  const MenuScreenLoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 110,
            decoration: ShapeDecoration(
              color: AppColors.buttonSecondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  height: 175,
                  decoration: ShapeDecoration(
                    color: AppColors.buttonSecondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  height: 175,
                  decoration: ShapeDecoration(
                    color: AppColors.buttonSecondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  height: 175,
                  decoration: ShapeDecoration(
                    color: AppColors.buttonSecondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  height: 175,
                  decoration: ShapeDecoration(
                    color: AppColors.buttonSecondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/common/ui_kit/assets.gen.dart';

class NavBarIcon extends StatelessWidget {
  final SvgGenImage icon;
  final String title;
  final bool isActive;

  const NavBarIcon({
    required this.icon,
    required this.title,
    required this.isActive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon.svg(
          colorFilter: ColorFilter.mode(
            isActive ? AppColors.textPrimary : AppColors.textSecondary,
            BlendMode.srcIn,
          ),
          fit: BoxFit.scaleDown,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isActive ? AppColors.textPrimary : AppColors.textSecondary,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

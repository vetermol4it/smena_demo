import 'package:flutter/material.dart';
import 'package:smena_demo/common/ui_kit/assets.gen.dart';
import 'package:smena_demo/features/banner/presentation/menu_banner_timer.dart';

class MenuBanner extends StatelessWidget {
  const MenuBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 110,
      decoration: ShapeDecoration(
        image: DecorationImage(image: Assets.images.homeBanner.provider(), fit: BoxFit.cover),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(11),
      child: const Align(
        alignment: Alignment.topRight,
        child: MenuBannerTimer(),
      ),
    );
  }
}

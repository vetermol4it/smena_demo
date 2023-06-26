import 'package:flutter/material.dart';
import 'package:smena_demo/common/models/menu_category.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/features/menu/presentation/category_screen/widgets/menu_item_card.dart';

class CategoryScreen extends StatelessWidget {
  final MenuCategory category;

  const CategoryScreen({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: AppColors.textPrimary,
        ),
        title: Text(
          category.name,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        itemCount: category.products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: (screenWidth / 2 - 20) / 230,
        ),
        itemBuilder: (context, index) => MenuItemCard(
          item: category.products[index],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smena_demo/common/ui_kit/app_colors.dart';
import 'package:smena_demo/features/cart/domain/models/cart_item.dart';
import 'package:smena_demo/features/cart/presentation/widgets/cart_item_counter.dart';

class CartItemCard extends StatelessWidget {
  final CartItem item;

  const CartItemCard({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(
            maxHeight: 100,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
            children: [
              Image.network(
                item.product.imageUrl,
                width: 60,
                height: 40,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.product.name,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${item.product.cost * item.count} ₽',
                                style: const TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                _getProductWeightText(),
                                style: const TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          CartItemCounter(item: item),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 1,
          color: AppColors.buttonSecondary,
          margin: const EdgeInsets.only(left: 20, right: 5),
        ),
      ],
    );
  }

  String _getProductWeightText() {
    String sumText = '';
    if (item.count > 1) {
      sumText = '${item.count}х${item.product.cost} ₽ ';
    }

    return sumText + item.product.sizes;
  }
}

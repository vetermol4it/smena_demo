import 'package:smena_demo/features/cart/domain/models/cart_item.dart';

class CartState {
  final List<CartItem> items;

  CartState({
    this.items = const [],
  });
}

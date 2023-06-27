import 'package:smena_demo/features/cart/domain/models/cart_item.dart';

class CartState {
  final List<CartItem> items;

  CartState({
    this.items = const [],
  });

  int get sum {
    int result = 0;
    for (var item in items) {
      result += item.count * item.product.cost;
    }
    return result;
  }
}

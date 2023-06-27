import 'package:smena_demo/features/cart/domain/models/cart_item.dart';

abstract class ICartRepository {
  Future<List<CartItem>> fetchItems();
  Future<void> saveItems(List<CartItem> items);
}

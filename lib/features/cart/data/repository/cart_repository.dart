import 'package:injectable/injectable.dart';
import 'package:smena_demo/features/cart/data/storage/cart_storage.dart';
import 'package:smena_demo/features/cart/domain/models/cart_item.dart';
import 'package:smena_demo/features/cart/domain/repository/i_cart_repository.dart';

@Injectable(as: ICartRepository)
class CartRepository implements ICartRepository {
  final CartStorage _storage;

  CartRepository(this._storage);

  @override
  Future<List<CartItem>> fetchItems() async {
    final itemsMapsList = await _storage.fetchItems();
    List<CartItem> result = [];
    for (var itemMap in itemsMapsList) {
      result.add(CartItem.fromJson(itemMap));
    }

    return result;
  }

  @override
  Future<void> saveItems(List<CartItem> items) {
    List<Map<String, dynamic>> itemsMapsList = [];
    for (var item in items) {
      itemsMapsList.add(item.toJson());
    }
    return _storage.saveItems(itemsMapsList);
  }
}

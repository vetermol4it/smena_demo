import 'package:injectable/injectable.dart';
import 'package:smena_demo/features/cart/data/storage/cart_storage.dart';
import 'package:smena_demo/features/cart/domain/models/cart_item.dart';
import 'package:smena_demo/features/cart/domain/repository/i_cart_repository.dart';

@Injectable(as: ICartRepository)
class CartRepository implements ICartRepository {
  final CartStorage _storage;

  CartRepository(this._storage);

  @override
  Future<List<CartItem>> fetchItems() => _storage.fetchItems();

  @override
  Future<void> saveItems(List<CartItem> items) => _storage.saveItems(items);
}

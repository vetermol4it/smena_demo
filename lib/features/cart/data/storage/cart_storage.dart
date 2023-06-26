import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:smena_demo/features/cart/domain/models/cart_item.dart';

@injectable
class CartStorage {
  final _boxName = 'cart';

  final _itemsKey = 'items';

  Box? _box;

  CartStorage() {
    _init();
  }

  Future<void> _init() async {
    _box = await Hive.openBox<List>(_boxName);
  }

  Future<List<CartItem>> fetchItems() async {
    if (_box == null) await _init();
    final result = _box?.get(_itemsKey) ?? [];

    return result;
  }

  Future<void> saveItems(List<CartItem> items) async {
    if (_box == null) await _init();
    return _box?.put(_itemsKey, items);
  }
}

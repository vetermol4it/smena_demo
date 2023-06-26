import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:smena_demo/common/models/menu_item.dart';
import 'package:smena_demo/features/cart/domain/cubit/cart_state.dart';
import 'package:smena_demo/features/cart/domain/models/cart_item.dart';
import 'package:smena_demo/features/cart/domain/repository/i_cart_repository.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  CartCubit(this._repository) : super(CartState()) {
    _fetchItems();
  }

  final ICartRepository _repository;

  List<CartItem> items = [];

  void _fetchItems() async {
    items = await _repository.fetchItems();
  }

  void addItem(MenuItem item) {
    int indexOfAlreadySavedItem = items.indexWhere((element) => element.product == item);

    if (indexOfAlreadySavedItem < 0) {
      items.add(CartItem(product: item));
    } else {
      final savedItem = items[indexOfAlreadySavedItem];
      items[indexOfAlreadySavedItem] = savedItem.copyWithIncrementCount();
    }

    _repository.saveItems(items);
    emit(CartState(items: items));
  }

  void removeItem(CartItem item) {
    if (item.count == 1) {
      items.remove(item);
    } else {
      final indexOfItem = items.indexOf(item);
      final savedItem = items[indexOfItem];

      items[indexOfItem] = savedItem.copyWithDecrementCount();
    }

    _repository.saveItems(items);
    emit(CartState(items: items));
  }
}

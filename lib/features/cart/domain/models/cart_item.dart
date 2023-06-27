import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smena_demo/common/models/menu_item.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  CartItem._();

  factory CartItem({
    @Default(1) int count,
    required MenuItem product,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, Object?> json) => _$CartItemFromJson(json);

  CartItem copyWithIncrementCount() => copyWith(count: count + 1);

  CartItem copyWithDecrementCount() => copyWith(count: count - 1);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item.freezed.dart';
part 'menu_item.g.dart';

@freezed
class MenuItem with _$MenuItem {
  const factory MenuItem({
    required int id,
    required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
    required int cost,
    required String sizes,
    required String description,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, Object?> json) => _$MenuItemFromJson(json);
}

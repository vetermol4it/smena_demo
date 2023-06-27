import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smena_demo/common/models/menu_item.dart';

part 'menu_category.freezed.dart';
part 'menu_category.g.dart';

@freezed
class MenuCategory with _$MenuCategory {
  const factory MenuCategory({
    required int id,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'category_name') required String name,
    required List<MenuItem> products,
  }) = _MenuCategory;

  factory MenuCategory.fromJson(Map<String, Object?> json) => _$MenuCategoryFromJson(json);
}

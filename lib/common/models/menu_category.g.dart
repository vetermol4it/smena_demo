// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuCategory _$$_MenuCategoryFromJson(Map<String, dynamic> json) =>
    _$_MenuCategory(
      id: json['id'] as int,
      imageUrl: json['image_url'] as String,
      name: json['category_name'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MenuCategoryToJson(_$_MenuCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'category_name': instance.name,
      'products': instance.products,
    };

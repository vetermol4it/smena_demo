// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuItem _$$_MenuItemFromJson(Map<String, dynamic> json) => _$_MenuItem(
      id: json['id'] as int,
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      cost: json['cost'] as int,
      sizes: json['sizes'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_MenuItemToJson(_$_MenuItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'cost': instance.cost,
      'sizes': instance.sizes,
      'description': instance.description,
    };

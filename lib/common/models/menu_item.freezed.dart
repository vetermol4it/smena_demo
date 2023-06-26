// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) {
  return _MenuItem.fromJson(json);
}

/// @nodoc
mixin _$MenuItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  String get sizes => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res, MenuItem>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      int cost,
      String sizes,
      String description});
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res, $Val extends MenuItem>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? cost = null,
    Object? sizes = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuItemCopyWith<$Res> implements $MenuItemCopyWith<$Res> {
  factory _$$_MenuItemCopyWith(
          _$_MenuItem value, $Res Function(_$_MenuItem) then) =
      __$$_MenuItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      int cost,
      String sizes,
      String description});
}

/// @nodoc
class __$$_MenuItemCopyWithImpl<$Res>
    extends _$MenuItemCopyWithImpl<$Res, _$_MenuItem>
    implements _$$_MenuItemCopyWith<$Res> {
  __$$_MenuItemCopyWithImpl(
      _$_MenuItem _value, $Res Function(_$_MenuItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? cost = null,
    Object? sizes = null,
    Object? description = null,
  }) {
    return _then(_$_MenuItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuItem extends _MenuItem {
  const _$_MenuItem(
      {required this.id,
      required this.name,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.cost,
      required this.sizes,
      required this.description})
      : super._();

  factory _$_MenuItem.fromJson(Map<String, dynamic> json) =>
      _$$_MenuItemFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final int cost;
  @override
  final String sizes;
  @override
  final String description;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuItemCopyWith<_$_MenuItem> get copyWith =>
      __$$_MenuItemCopyWithImpl<_$_MenuItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuItemToJson(
      this,
    );
  }
}

abstract class _MenuItem extends MenuItem {
  const factory _MenuItem(
      {required final int id,
      required final String name,
      @JsonKey(name: 'image_url') required final String imageUrl,
      required final int cost,
      required final String sizes,
      required final String description}) = _$_MenuItem;
  const _MenuItem._() : super._();

  factory _MenuItem.fromJson(Map<String, dynamic> json) = _$_MenuItem.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  int get cost;
  @override
  String get sizes;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_MenuItemCopyWith<_$_MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

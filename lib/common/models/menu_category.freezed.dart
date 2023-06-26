// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuCategory _$MenuCategoryFromJson(Map<String, dynamic> json) {
  return _MenuCategory.fromJson(json);
}

/// @nodoc
mixin _$MenuCategory {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get name => throw _privateConstructorUsedError;
  List<MenuItem> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuCategoryCopyWith<MenuCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCategoryCopyWith<$Res> {
  factory $MenuCategoryCopyWith(
          MenuCategory value, $Res Function(MenuCategory) then) =
      _$MenuCategoryCopyWithImpl<$Res, MenuCategory>;
  @useResult
  $Res call(
      {int id,
      String imageUrl,
      @JsonKey(name: 'category_name') String name,
      List<MenuItem> products});
}

/// @nodoc
class _$MenuCategoryCopyWithImpl<$Res, $Val extends MenuCategory>
    implements $MenuCategoryCopyWith<$Res> {
  _$MenuCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuCategoryCopyWith<$Res>
    implements $MenuCategoryCopyWith<$Res> {
  factory _$$_MenuCategoryCopyWith(
          _$_MenuCategory value, $Res Function(_$_MenuCategory) then) =
      __$$_MenuCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String imageUrl,
      @JsonKey(name: 'category_name') String name,
      List<MenuItem> products});
}

/// @nodoc
class __$$_MenuCategoryCopyWithImpl<$Res>
    extends _$MenuCategoryCopyWithImpl<$Res, _$_MenuCategory>
    implements _$$_MenuCategoryCopyWith<$Res> {
  __$$_MenuCategoryCopyWithImpl(
      _$_MenuCategory _value, $Res Function(_$_MenuCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? products = null,
  }) {
    return _then(_$_MenuCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuCategory implements _MenuCategory {
  const _$_MenuCategory(
      {required this.id,
      required this.imageUrl,
      @JsonKey(name: 'category_name') required this.name,
      required final List<MenuItem> products})
      : _products = products;

  factory _$_MenuCategory.fromJson(Map<String, dynamic> json) =>
      _$$_MenuCategoryFromJson(json);

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  @JsonKey(name: 'category_name')
  final String name;
  final List<MenuItem> _products;
  @override
  List<MenuItem> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'MenuCategory(id: $id, imageUrl: $imageUrl, name: $name, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, name,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuCategoryCopyWith<_$_MenuCategory> get copyWith =>
      __$$_MenuCategoryCopyWithImpl<_$_MenuCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuCategoryToJson(
      this,
    );
  }
}

abstract class _MenuCategory implements MenuCategory {
  const factory _MenuCategory(
      {required final int id,
      required final String imageUrl,
      @JsonKey(name: 'category_name') required final String name,
      required final List<MenuItem> products}) = _$_MenuCategory;

  factory _MenuCategory.fromJson(Map<String, dynamic> json) =
      _$_MenuCategory.fromJson;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  @JsonKey(name: 'category_name')
  String get name;
  @override
  List<MenuItem> get products;
  @override
  @JsonKey(ignore: true)
  _$$_MenuCategoryCopyWith<_$_MenuCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

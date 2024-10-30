// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String? get ProductName => throw _privateConstructorUsedError;
  CategoryModel? get ProductCategory => throw _privateConstructorUsedError;
  String get ProductImage => throw _privateConstructorUsedError;
  String? get ProductSku => throw _privateConstructorUsedError;
  String? get ProductStatus => throw _privateConstructorUsedError;
  String? get ProductDescribtion => throw _privateConstructorUsedError;
  int? get ProductPrice => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String? ProductName,
      CategoryModel? ProductCategory,
      String ProductImage,
      String? ProductSku,
      String? ProductStatus,
      String? ProductDescribtion,
      int? ProductPrice});

  $CategoryModelCopyWith<$Res>? get ProductCategory;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ProductName = freezed,
    Object? ProductCategory = freezed,
    Object? ProductImage = null,
    Object? ProductSku = freezed,
    Object? ProductStatus = freezed,
    Object? ProductDescribtion = freezed,
    Object? ProductPrice = freezed,
  }) {
    return _then(_value.copyWith(
      ProductName: freezed == ProductName
          ? _value.ProductName
          : ProductName // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductCategory: freezed == ProductCategory
          ? _value.ProductCategory
          : ProductCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      ProductImage: null == ProductImage
          ? _value.ProductImage
          : ProductImage // ignore: cast_nullable_to_non_nullable
              as String,
      ProductSku: freezed == ProductSku
          ? _value.ProductSku
          : ProductSku // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductStatus: freezed == ProductStatus
          ? _value.ProductStatus
          : ProductStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductDescribtion: freezed == ProductDescribtion
          ? _value.ProductDescribtion
          : ProductDescribtion // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductPrice: freezed == ProductPrice
          ? _value.ProductPrice
          : ProductPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get ProductCategory {
    if (_value.ProductCategory == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.ProductCategory!, (value) {
      return _then(_value.copyWith(ProductCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? ProductName,
      CategoryModel? ProductCategory,
      String ProductImage,
      String? ProductSku,
      String? ProductStatus,
      String? ProductDescribtion,
      int? ProductPrice});

  @override
  $CategoryModelCopyWith<$Res>? get ProductCategory;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ProductName = freezed,
    Object? ProductCategory = freezed,
    Object? ProductImage = null,
    Object? ProductSku = freezed,
    Object? ProductStatus = freezed,
    Object? ProductDescribtion = freezed,
    Object? ProductPrice = freezed,
  }) {
    return _then(_$ProductModelImpl(
      ProductName: freezed == ProductName
          ? _value.ProductName
          : ProductName // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductCategory: freezed == ProductCategory
          ? _value.ProductCategory
          : ProductCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      ProductImage: null == ProductImage
          ? _value.ProductImage
          : ProductImage // ignore: cast_nullable_to_non_nullable
              as String,
      ProductSku: freezed == ProductSku
          ? _value.ProductSku
          : ProductSku // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductStatus: freezed == ProductStatus
          ? _value.ProductStatus
          : ProductStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductDescribtion: freezed == ProductDescribtion
          ? _value.ProductDescribtion
          : ProductDescribtion // ignore: cast_nullable_to_non_nullable
              as String?,
      ProductPrice: freezed == ProductPrice
          ? _value.ProductPrice
          : ProductPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {required this.ProductName,
      required this.ProductCategory,
      required this.ProductImage,
      required this.ProductSku,
      required this.ProductStatus,
      required this.ProductDescribtion,
      required this.ProductPrice});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String? ProductName;
  @override
  final CategoryModel? ProductCategory;
  @override
  final String ProductImage;
  @override
  final String? ProductSku;
  @override
  final String? ProductStatus;
  @override
  final String? ProductDescribtion;
  @override
  final int? ProductPrice;

  @override
  String toString() {
    return 'ProductModel(ProductName: $ProductName, ProductCategory: $ProductCategory, ProductImage: $ProductImage, ProductSku: $ProductSku, ProductStatus: $ProductStatus, ProductDescribtion: $ProductDescribtion, ProductPrice: $ProductPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.ProductName, ProductName) ||
                other.ProductName == ProductName) &&
            (identical(other.ProductCategory, ProductCategory) ||
                other.ProductCategory == ProductCategory) &&
            (identical(other.ProductImage, ProductImage) ||
                other.ProductImage == ProductImage) &&
            (identical(other.ProductSku, ProductSku) ||
                other.ProductSku == ProductSku) &&
            (identical(other.ProductStatus, ProductStatus) ||
                other.ProductStatus == ProductStatus) &&
            (identical(other.ProductDescribtion, ProductDescribtion) ||
                other.ProductDescribtion == ProductDescribtion) &&
            (identical(other.ProductPrice, ProductPrice) ||
                other.ProductPrice == ProductPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ProductName,
      ProductCategory,
      ProductImage,
      ProductSku,
      ProductStatus,
      ProductDescribtion,
      ProductPrice);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {required final String? ProductName,
      required final CategoryModel? ProductCategory,
      required final String ProductImage,
      required final String? ProductSku,
      required final String? ProductStatus,
      required final String? ProductDescribtion,
      required final int? ProductPrice}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String? get ProductName;
  @override
  CategoryModel? get ProductCategory;
  @override
  String get ProductImage;
  @override
  String? get ProductSku;
  @override
  String? get ProductStatus;
  @override
  String? get ProductDescribtion;
  @override
  int? get ProductPrice;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      ProductName: json['ProductName'] as String?,
      ProductCategory: json['ProductCategory'] == null
          ? null
          : CategoryModel.fromJson(
              json['ProductCategory'] as Map<String, dynamic>),
      ProductImage: json['ProductImage'] as String,
      ProductSku: json['ProductSku'] as String?,
      ProductStatus: json['ProductStatus'] as String?,
      ProductDescribtion: json['ProductDescribtion'] as String?,
      ProductPrice: (json['ProductPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'ProductName': instance.ProductName,
      'ProductCategory': instance.ProductCategory,
      'ProductImage': instance.ProductImage,
      'ProductSku': instance.ProductSku,
      'ProductStatus': instance.ProductStatus,
      'ProductDescribtion': instance.ProductDescribtion,
      'ProductPrice': instance.ProductPrice,
    };

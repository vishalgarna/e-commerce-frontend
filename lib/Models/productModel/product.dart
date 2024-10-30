import 'package:everything/Models/category.model/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

List<ProductModel> productfromjson(dynamic str) {
  return List<ProductModel>.from(
      str.map((data) => ProductModel.fromJson(data))
  ).toList();
}


@freezed
abstract class ProductModel  with _$ProductModel {

  factory ProductModel({
    required String ? ProductName,
    required CategoryModel ? ProductCategory,
    required String  ProductImage ,
    required String ? ProductSku ,
    required String ? ProductStatus ,
    required String ? ProductDescribtion ,
    required int  ? ProductPrice

  }) = _ProductModel;

  factory  ProductModel.fromJson(Map<String , dynamic> json) =>
      _$ProductModelFromJson(json);

}

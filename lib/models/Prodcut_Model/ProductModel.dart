
import 'package:everything/Components/config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'ProductModel.freezed.dart';
part 'ProductModel.g.dart';
@freezed
class Product with  _$Product{

factory  Product({
  // *********** this is for testing
required int id,
required String title,
required String url,
  // ************* this is actual
  // required String ProductId,
  // required String ProductImage,
  // required String ProductName,
  // required CategoryModel categorymodel ,
  // required double  ProductPrice,
  // required String ProductSku,
  // required double  ProductStock,
  // required String ProductShort_Describtion,


}) = _Product;

 factory Product.fromJson(Map<String ,dynamic>json) => _$ProductFromJson(json);
}

// extension ProoductExt on Product {
//   String get fullimagepath => config.imageurl + ProductImage;
// }


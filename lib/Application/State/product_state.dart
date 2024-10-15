import 'package:everything/models/CategoryModel/category.dart';
import 'package:everything/models/Prodcut_Model/ProductModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';
@freezed
class ProductState with _$ProductState {

  factory ProductState ({
    @Default(<CategoryModel>[]) List<CategoryModel> products,
    @Default(true) bool hasnext,
    @Default(true) bool isloading
}) = _ProductState;
}
import 'package:everything/Providers/CategoriesProvider.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

List<CategoryModel> categoriesFromjson (dynamic str)=> List<CategoryModel>.from(
    (str).map(
          (e) => CategoryModel.fromJson(e),
    ));



@freezed
abstract class CategoryModel with _$CategoryModel {
  factory CategoryModel(
      {required String first_name,
      required String avatar,
      required int id}) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  //  => _$PersonFromJson(json);
}

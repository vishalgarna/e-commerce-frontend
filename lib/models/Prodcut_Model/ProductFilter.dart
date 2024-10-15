

import 'package:everything/models/CategoryModel/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ProductFilter.freezed.dart';

@freezed
abstract class ProductfilterModel with _$ProductfilterModel{

  factory ProductfilterModel({
     pagination ? paginationmodel,
    String ? categoryid,
    String ? sortby,

}) = _ProductfilterModel;

}
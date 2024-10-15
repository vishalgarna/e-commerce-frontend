
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Product_Sort.freezed.dart';
@freezed
class ProductSortModel with _$ProductSortModel {

  factory ProductSortModel ( {

    String ? label,
    String ? value,
  }) = _ProductSortModel;
}
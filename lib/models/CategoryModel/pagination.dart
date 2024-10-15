import 'package:freezed_annotation/freezed_annotation.dart';
part 'pagination.freezed.dart';
@freezed
class pagination with _$pagination{

  factory  pagination({
     required int page ,
    required int pagesize ,
  }
) = _pagination;
}
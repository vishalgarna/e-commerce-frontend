// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ProductFilter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductfilterModel {
  pagination? get paginationmodel => throw _privateConstructorUsedError;
  String? get categoryid => throw _privateConstructorUsedError;
  String? get sortby => throw _privateConstructorUsedError;

  /// Create a copy of ProductfilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductfilterModelCopyWith<ProductfilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductfilterModelCopyWith<$Res> {
  factory $ProductfilterModelCopyWith(
          ProductfilterModel value, $Res Function(ProductfilterModel) then) =
      _$ProductfilterModelCopyWithImpl<$Res, ProductfilterModel>;
  @useResult
  $Res call({pagination? paginationmodel, String? categoryid, String? sortby});

  $paginationCopyWith<$Res>? get paginationmodel;
}

/// @nodoc
class _$ProductfilterModelCopyWithImpl<$Res, $Val extends ProductfilterModel>
    implements $ProductfilterModelCopyWith<$Res> {
  _$ProductfilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductfilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationmodel = freezed,
    Object? categoryid = freezed,
    Object? sortby = freezed,
  }) {
    return _then(_value.copyWith(
      paginationmodel: freezed == paginationmodel
          ? _value.paginationmodel
          : paginationmodel // ignore: cast_nullable_to_non_nullable
              as pagination?,
      categoryid: freezed == categoryid
          ? _value.categoryid
          : categoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      sortby: freezed == sortby
          ? _value.sortby
          : sortby // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProductfilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $paginationCopyWith<$Res>? get paginationmodel {
    if (_value.paginationmodel == null) {
      return null;
    }

    return $paginationCopyWith<$Res>(_value.paginationmodel!, (value) {
      return _then(_value.copyWith(paginationmodel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductfilterModelImplCopyWith<$Res>
    implements $ProductfilterModelCopyWith<$Res> {
  factory _$$ProductfilterModelImplCopyWith(_$ProductfilterModelImpl value,
          $Res Function(_$ProductfilterModelImpl) then) =
      __$$ProductfilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({pagination? paginationmodel, String? categoryid, String? sortby});

  @override
  $paginationCopyWith<$Res>? get paginationmodel;
}

/// @nodoc
class __$$ProductfilterModelImplCopyWithImpl<$Res>
    extends _$ProductfilterModelCopyWithImpl<$Res, _$ProductfilterModelImpl>
    implements _$$ProductfilterModelImplCopyWith<$Res> {
  __$$ProductfilterModelImplCopyWithImpl(_$ProductfilterModelImpl _value,
      $Res Function(_$ProductfilterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductfilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationmodel = freezed,
    Object? categoryid = freezed,
    Object? sortby = freezed,
  }) {
    return _then(_$ProductfilterModelImpl(
      paginationmodel: freezed == paginationmodel
          ? _value.paginationmodel
          : paginationmodel // ignore: cast_nullable_to_non_nullable
              as pagination?,
      categoryid: freezed == categoryid
          ? _value.categoryid
          : categoryid // ignore: cast_nullable_to_non_nullable
              as String?,
      sortby: freezed == sortby
          ? _value.sortby
          : sortby // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductfilterModelImpl implements _ProductfilterModel {
  _$ProductfilterModelImpl(
      {this.paginationmodel, this.categoryid, this.sortby});

  @override
  final pagination? paginationmodel;
  @override
  final String? categoryid;
  @override
  final String? sortby;

  @override
  String toString() {
    return 'ProductfilterModel(paginationmodel: $paginationmodel, categoryid: $categoryid, sortby: $sortby)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductfilterModelImpl &&
            (identical(other.paginationmodel, paginationmodel) ||
                other.paginationmodel == paginationmodel) &&
            (identical(other.categoryid, categoryid) ||
                other.categoryid == categoryid) &&
            (identical(other.sortby, sortby) || other.sortby == sortby));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paginationmodel, categoryid, sortby);

  /// Create a copy of ProductfilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductfilterModelImplCopyWith<_$ProductfilterModelImpl> get copyWith =>
      __$$ProductfilterModelImplCopyWithImpl<_$ProductfilterModelImpl>(
          this, _$identity);
}

abstract class _ProductfilterModel implements ProductfilterModel {
  factory _ProductfilterModel(
      {final pagination? paginationmodel,
      final String? categoryid,
      final String? sortby}) = _$ProductfilterModelImpl;

  @override
  pagination? get paginationmodel;
  @override
  String? get categoryid;
  @override
  String? get sortby;

  /// Create a copy of ProductfilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductfilterModelImplCopyWith<_$ProductfilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

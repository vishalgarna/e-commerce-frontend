// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$pagination {
  int get page => throw _privateConstructorUsedError;
  int get pagesize => throw _privateConstructorUsedError;

  /// Create a copy of pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $paginationCopyWith<pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $paginationCopyWith<$Res> {
  factory $paginationCopyWith(
          pagination value, $Res Function(pagination) then) =
      _$paginationCopyWithImpl<$Res, pagination>;
  @useResult
  $Res call({int page, int pagesize});
}

/// @nodoc
class _$paginationCopyWithImpl<$Res, $Val extends pagination>
    implements $paginationCopyWith<$Res> {
  _$paginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pagesize = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagesize: null == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$paginationImplCopyWith<$Res>
    implements $paginationCopyWith<$Res> {
  factory _$$paginationImplCopyWith(
          _$paginationImpl value, $Res Function(_$paginationImpl) then) =
      __$$paginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int pagesize});
}

/// @nodoc
class __$$paginationImplCopyWithImpl<$Res>
    extends _$paginationCopyWithImpl<$Res, _$paginationImpl>
    implements _$$paginationImplCopyWith<$Res> {
  __$$paginationImplCopyWithImpl(
      _$paginationImpl _value, $Res Function(_$paginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pagesize = null,
  }) {
    return _then(_$paginationImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagesize: null == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$paginationImpl implements _pagination {
  _$paginationImpl({required this.page, required this.pagesize});

  @override
  final int page;
  @override
  final int pagesize;

  @override
  String toString() {
    return 'pagination(page: $page, pagesize: $pagesize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$paginationImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pagesize);

  /// Create a copy of pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$paginationImplCopyWith<_$paginationImpl> get copyWith =>
      __$$paginationImplCopyWithImpl<_$paginationImpl>(this, _$identity);
}

abstract class _pagination implements pagination {
  factory _pagination({required final int page, required final int pagesize}) =
      _$paginationImpl;

  @override
  int get page;
  @override
  int get pagesize;

  /// Create a copy of pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$paginationImplCopyWith<_$paginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

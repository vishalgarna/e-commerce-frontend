// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      first_name: json['first_name'] as String,
      avatar: json['avatar'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'avatar': instance.avatar,
      'id': instance.id,
    };

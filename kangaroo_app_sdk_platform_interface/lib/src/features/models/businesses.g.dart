// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'businesses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Businesses _$BusinessesFromJson(Map<String, dynamic> json) => Businesses(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BusinessData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BusinessesToJson(Businesses instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

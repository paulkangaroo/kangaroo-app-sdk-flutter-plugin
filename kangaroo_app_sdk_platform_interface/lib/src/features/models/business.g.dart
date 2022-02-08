// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Business _$BusinessFromJson(Map<String, dynamic> json) => Business(
      data: json['data'] == null
          ? null
          : BusinessData.fromJson(json['data'] as Map<String, dynamic>),
      included: json['included'] == null
          ? null
          : BusinessBranchesData.fromJson(
              json['included'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessToJson(Business instance) => <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };

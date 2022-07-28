// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultBusiness _$DefaultBusinessFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DefaultBusiness',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = DefaultBusiness(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : DefaultBusinessData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$DefaultBusinessToJson(DefaultBusiness instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

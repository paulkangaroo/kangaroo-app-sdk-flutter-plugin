// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessBannersModel _$UserBusinessBannersModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessBannersModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = UserBusinessBannersModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : BusinessData.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : UserBusinessBannersIncluded.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessBannersModelToJson(
        UserBusinessBannersModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };

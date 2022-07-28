// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessProfileModel _$UserBusinessProfileModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessProfileModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = UserBusinessProfileModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : BusinessData.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : UserProfileInclude.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessProfileModelToJson(
        UserBusinessProfileModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };

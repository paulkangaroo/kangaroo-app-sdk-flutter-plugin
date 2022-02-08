// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserProfileModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = UserProfileModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserProfileDataModel.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : UserProfileInclude.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserProfileModelToJson(UserProfileModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };

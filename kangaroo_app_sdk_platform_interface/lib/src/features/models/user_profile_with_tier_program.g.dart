// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_with_tier_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileWithTierProgram _$UserProfileWithTierProgramFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserProfileWithTierProgram',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = UserProfileWithTierProgram(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserProfileDataModel.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : TierProgramInclude.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserProfileWithTierProgramToJson(
        UserProfileWithTierProgram instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };

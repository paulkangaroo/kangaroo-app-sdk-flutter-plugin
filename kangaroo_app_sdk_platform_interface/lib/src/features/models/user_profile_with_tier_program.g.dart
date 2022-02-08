// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_with_tier_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileWithTierProgram _$UserProfileWithTierProgramFromJson(
        Map<String, dynamic> json) =>
    UserProfileWithTierProgram(
      data: json['data'] == null
          ? null
          : UserProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
      included: json['included'] == null
          ? null
          : TierProgramInclude.fromJson(
              json['included'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserProfileWithTierProgramToJson(
        UserProfileWithTierProgram instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };

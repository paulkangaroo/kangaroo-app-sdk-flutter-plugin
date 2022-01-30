// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    UserProfileModel(
      data: UserProfileData.fromJson(json['data'] as Map<String, dynamic>),
      included:
          UserProfileInclude.fromJson(json['included'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserProfileModelToJson(UserProfileModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'included': instance.included.toJson(),
    };

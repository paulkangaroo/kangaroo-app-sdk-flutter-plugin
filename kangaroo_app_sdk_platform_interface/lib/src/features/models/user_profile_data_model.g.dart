// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileDataModel _$UserProfileDataModelFromJson(
        Map<String, dynamic> json) =>
    UserProfileDataModel(
      id: json['id'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      qrcode: json['qrcode'] as String?,
      gender: json['gender'] as String?,
      birthDate: json['birth_date'] as String?,
      language: json['language'] as String?,
      countryCode: json['country_code'] as String?,
      profilePhoto: json['profile_photo'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      enabled: json['enabled'] as bool?,
      emailVerified: json['email_verified'] as bool?,
      phoneVerified: json['phone_verified'] as bool?,
    );

Map<String, dynamic> _$UserProfileDataModelToJson(
        UserProfileDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'qrcode': instance.qrcode,
      'gender': instance.gender,
      'birth_date': instance.birthDate,
      'language': instance.language,
      'country_code': instance.countryCode,
      'profile_photo': instance.profilePhoto,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'enabled': instance.enabled,
      'email_verified': instance.emailVerified,
      'phone_verified': instance.phoneVerified,
    };

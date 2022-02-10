// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authentication_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAuthenticationModel _$UserAuthenticationModelFromJson(
        Map<String, dynamic> json) =>
    UserAuthenticationModel(
      expiresIn: json['expires_in'] as int,
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$UserAuthenticationModelToJson(
        UserAuthenticationModel instance) =>
    <String, dynamic>{
      'expires_in': instance.expiresIn,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

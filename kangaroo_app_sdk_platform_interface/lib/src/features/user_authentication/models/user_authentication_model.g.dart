// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authentication_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAuthenticationModel _$UserAuthenticationModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserAuthenticationModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['expires_in', 'access_token', 'refresh_token'],
        );
        final val = UserAuthenticationModel(
          expiresIn: $checkedConvert('expires_in', (v) => v as int),
          accessToken: $checkedConvert('access_token', (v) => v as String),
          refreshToken: $checkedConvert('refresh_token', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'expiresIn': 'expires_in',
        'accessToken': 'access_token',
        'refreshToken': 'refresh_token'
      },
    );

Map<String, dynamic> _$UserAuthenticationModelToJson(
        UserAuthenticationModel instance) =>
    <String, dynamic>{
      'expires_in': instance.expiresIn,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

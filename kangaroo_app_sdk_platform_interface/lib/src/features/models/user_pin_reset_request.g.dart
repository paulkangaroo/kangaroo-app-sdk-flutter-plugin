// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pin_reset_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPinResetRequest _$UserPinResetRequestFromJson(Map<String, dynamic> json) =>
    UserPinResetRequest(
      statusCode: json['status_code'] as int,
      message: json['message'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$UserPinResetRequestToJson(
        UserPinResetRequest instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'description': instance.description,
    };

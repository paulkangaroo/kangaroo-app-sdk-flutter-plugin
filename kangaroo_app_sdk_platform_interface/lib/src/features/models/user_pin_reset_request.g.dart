// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pin_reset_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPinResetRequest _$UserPinResetRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserPinResetRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['status_code', 'message', 'description'],
        );
        final val = UserPinResetRequest(
          statusCode: $checkedConvert('status_code', (v) => v as int),
          message: $checkedConvert('message', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'statusCode': 'status_code'},
    );

Map<String, dynamic> _$UserPinResetRequestToJson(
        UserPinResetRequest instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'description': instance.description,
    };

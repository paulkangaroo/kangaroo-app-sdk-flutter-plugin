// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_reset_with_token_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinResetWithTokenRequestModel _$PinResetWithTokenRequestModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PinResetWithTokenRequestModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['token', 'pin_code', 'use_same_pin'],
        );
        final val = PinResetWithTokenRequestModel(
          token: $checkedConvert('token', (v) => v as String),
          pinCode: $checkedConvert('pin_code', (v) => v as String),
          useSamePin: $checkedConvert('use_same_pin', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {'pinCode': 'pin_code', 'useSamePin': 'use_same_pin'},
    );

Map<String, dynamic> _$PinResetWithTokenRequestModelToJson(
        PinResetWithTokenRequestModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'pin_code': instance.pinCode,
      'use_same_pin': instance.useSamePin,
    };

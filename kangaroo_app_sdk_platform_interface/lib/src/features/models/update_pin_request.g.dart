// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePinRequest _$UpdatePinRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdatePinRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['pin_code'],
        );
        final val = UpdatePinRequest(
          pinCode: $checkedConvert('pin_code', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'pinCode': 'pin_code'},
    );

Map<String, dynamic> _$UpdatePinRequestToJson(UpdatePinRequest instance) =>
    <String, dynamic>{
      'pin_code': instance.pinCode,
    };

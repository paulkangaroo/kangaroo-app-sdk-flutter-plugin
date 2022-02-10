// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_request_to.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferRequestTo _$TransferRequestToFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferRequestTo',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name', 'phone', 'country_code', 'email'],
        );
        final val = TransferRequestTo(
          name: $checkedConvert('name', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'countryCode': 'country_code'},
    );

Map<String, dynamic> _$TransferRequestToToJson(TransferRequestTo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'country_code': instance.countryCode,
      'email': instance.email,
    };

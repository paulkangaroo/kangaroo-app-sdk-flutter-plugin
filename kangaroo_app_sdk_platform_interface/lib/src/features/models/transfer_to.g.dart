// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_to.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferTo _$TransferToFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TransferTo',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name', 'phone', 'country_code', 'email'],
        );
        final val = TransferTo(
          name: $checkedConvert('name', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'countryCode': 'country_code'},
    );

Map<String, dynamic> _$TransferToToJson(TransferTo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'country_code': instance.countryCode,
      'email': instance.email,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Country',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'name', 'code', 'code_iso3', 'phone_code'],
        );
        final val = Country(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          code: $checkedConvert('code', (v) => v as String?),
          codeIso3: $checkedConvert('code_iso3', (v) => v as String?),
          phoneCode: $checkedConvert('phone_code', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {'codeIso3': 'code_iso3', 'phoneCode': 'phone_code'},
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'code_iso3': instance.codeIso3,
      'phone_code': instance.phoneCode,
    };

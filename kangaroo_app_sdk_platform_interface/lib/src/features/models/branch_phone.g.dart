// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_phone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchPhone _$BranchPhoneFromJson(Map<String, dynamic> json) => $checkedCreate(
      'BranchPhone',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'number',
            'country_code',
            'national_format',
            'intl_format'
          ],
        );
        final val = BranchPhone(
          number: $checkedConvert('number', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          nationalFormat:
              $checkedConvert('national_format', (v) => v as String?),
          intlFormat: $checkedConvert('intl_format', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'countryCode': 'country_code',
        'nationalFormat': 'national_format',
        'intlFormat': 'intl_format'
      },
    );

Map<String, dynamic> _$BranchPhoneToJson(BranchPhone instance) =>
    <String, dynamic>{
      'number': instance.number,
      'country_code': instance.countryCode,
      'national_format': instance.nationalFormat,
      'intl_format': instance.intlFormat,
    };

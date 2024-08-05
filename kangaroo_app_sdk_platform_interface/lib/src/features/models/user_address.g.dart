// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserAddress',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'street',
            'city',
            'region',
            'country',
            'country_code',
            'zip_code'
          ],
        );
        final val = UserAddress(
          street: $checkedConvert('street', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          region: $checkedConvert('region', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          zipCode: $checkedConvert('zip_code', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'countryCode': 'country_code', 'zipCode': 'zip_code'},
    );

Map<String, dynamic> _$UserAddressToJson(UserAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'region': instance.region,
      'country': instance.country,
      'country_code': instance.countryCode,
      'zip_code': instance.zipCode,
    };

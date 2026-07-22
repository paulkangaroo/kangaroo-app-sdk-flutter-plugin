// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AddressModel',
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
            'lat',
            'long',
            'zip_code',
            'unit'
          ],
        );
        final val = AddressModel(
          street: $checkedConvert('street', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          region: $checkedConvert('region', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          lat: $checkedConvert('lat', (v) => (v as num?)?.toDouble()),
          long: $checkedConvert('long', (v) => (v as num?)?.toDouble()),
          zipCode: $checkedConvert('zip_code', (v) => v as String?),
          unit: $checkedConvert('unit', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'countryCode': 'country_code', 'zipCode': 'zip_code'},
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'region': instance.region,
      'country': instance.country,
      'country_code': instance.countryCode,
      'lat': instance.lat,
      'long': instance.long,
      'zip_code': instance.zipCode,
      'unit': instance.unit,
    };

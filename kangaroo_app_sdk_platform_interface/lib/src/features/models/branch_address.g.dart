// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchAddress _$BranchAddressFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BranchAddress',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'formatted',
            'street',
            'city',
            'region',
            'country',
            'lat',
            'long'
          ],
        );
        final val = BranchAddress(
          formatted: $checkedConvert('formatted', (v) => v as String?),
          street: $checkedConvert('street', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          region: $checkedConvert('region', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          lat: $checkedConvert('lat', (v) => (v as num?)?.toDouble()),
          long: $checkedConvert('long', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$BranchAddressToJson(BranchAddress instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'street': instance.street,
      'city': instance.city,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'long': instance.long,
    };

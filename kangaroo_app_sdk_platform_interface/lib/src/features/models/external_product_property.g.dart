// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_product_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalProductProperty _$ExternalProductPropertyFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ExternalProductProperty',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['displayString', 'value'],
        );
        final val = ExternalProductProperty(
          displayString: $checkedConvert('displayString', (v) => v as String?),
          value: $checkedConvert('value', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ExternalProductPropertyToJson(
        ExternalProductProperty instance) =>
    <String, dynamic>{
      'displayString': instance.displayString,
      'value': instance.value,
    };

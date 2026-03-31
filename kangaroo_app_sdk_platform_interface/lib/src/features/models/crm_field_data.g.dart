// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crm_field_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrmFieldData _$CrmFieldDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CrmFieldData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'name',
            'label',
            'value',
            'is_hidden',
            'is_required',
            'field_type',
            'is_custom_field',
            'display_order'
          ],
        );
        final val = CrmFieldData(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          label: $checkedConvert('label', (v) => v as String?),
          value: $checkedConvert('value', (v) => v as String?),
          isHidden: $checkedConvert('is_hidden', (v) => v as bool?),
          isRequired: $checkedConvert('is_required', (v) => v as bool?),
          fieldType: $checkedConvert('field_type', (v) => v as String?),
          isCustomField: $checkedConvert('is_custom_field', (v) => v as bool?),
          displayOrder:
              $checkedConvert('display_order', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'isHidden': 'is_hidden',
        'isRequired': 'is_required',
        'fieldType': 'field_type',
        'isCustomField': 'is_custom_field',
        'displayOrder': 'display_order'
      },
    );

Map<String, dynamic> _$CrmFieldDataToJson(CrmFieldData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'label': instance.label,
      'value': instance.value,
      'is_hidden': instance.isHidden,
      'is_required': instance.isRequired,
      'field_type': instance.fieldType,
      'is_custom_field': instance.isCustomField,
      'display_order': instance.displayOrder,
    };

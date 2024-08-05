// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crm_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrmFields _$CrmFieldsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'CrmFields',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = CrmFields(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CrmFieldData.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$CrmFieldsToJson(CrmFields instance) => <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

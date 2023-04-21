// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perform_action_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerformActionResponseModel _$PerformActionResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PerformActionResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'status'],
        );
        final val = PerformActionResponseModel(
          id: $checkedConvert('id', (v) => v as int?),
          status: $checkedConvert('status', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PerformActionResponseModelToJson(
        PerformActionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
    };

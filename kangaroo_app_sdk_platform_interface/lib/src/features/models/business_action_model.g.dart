// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_action_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessActionModel _$BusinessActionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BusinessActionModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'points', 'action_id'],
        );
        final val = BusinessActionModel(
          id: $checkedConvert('id', (v) => v as int?),
          points: $checkedConvert('points', (v) => v as int?),
          actionId: $checkedConvert('action_id', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {'actionId': 'action_id'},
    );

Map<String, dynamic> _$BusinessActionModelToJson(
        BusinessActionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': instance.points,
      'action_id': instance.actionId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger_geofence_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TriggerGeofenceRequest _$TriggerGeofenceRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TriggerGeofenceRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['geofence_id', 'trigger_condition'],
        );
        final val = TriggerGeofenceRequest(
          geofenceId: $checkedConvert('geofence_id', (v) => (v as num).toInt()),
          triggerCondition:
              $checkedConvert('trigger_condition', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'geofenceId': 'geofence_id',
        'triggerCondition': 'trigger_condition'
      },
    );

Map<String, dynamic> _$TriggerGeofenceRequestToJson(
        TriggerGeofenceRequest instance) =>
    <String, dynamic>{
      'geofence_id': instance.geofenceId,
      'trigger_condition': instance.triggerCondition,
    };

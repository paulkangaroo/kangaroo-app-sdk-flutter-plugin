// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger_geofence_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TriggerGeofenceResponseModel _$TriggerGeofenceResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TriggerGeofenceResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = TriggerGeofenceResponseModel(
          data: $checkedConvert(
              'data', (v) => Campaign.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$TriggerGeofenceResponseModelToJson(
        TriggerGeofenceResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

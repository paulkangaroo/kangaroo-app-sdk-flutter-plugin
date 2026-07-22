// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geofence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeofenceModel _$GeofenceModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GeofenceModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'title',
            'latitude',
            'longitude',
            'radius',
            'track',
            'use_exact_address',
            'active',
            'status',
            'linked_campaigns',
            'created_at'
          ],
        );
        final val = GeofenceModel(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          title: $checkedConvert('title', (v) => v as String?),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude:
              $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
          radius: $checkedConvert('radius', (v) => (v as num?)?.toDouble()),
          track: $checkedConvert('track', (v) => v as bool?),
          useExactAddress:
              $checkedConvert('use_exact_address', (v) => v as bool?),
          active: $checkedConvert('active', (v) => v as bool?),
          status: $checkedConvert('status', (v) => v as String?),
          linkedCampaigns: $checkedConvert(
              'linked_campaigns',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'useExactAddress': 'use_exact_address',
        'linkedCampaigns': 'linked_campaigns',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$GeofenceModelToJson(GeofenceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'radius': instance.radius,
      'track': instance.track,
      'use_exact_address': instance.useExactAddress,
      'active': instance.active,
      'status': instance.status,
      'linked_campaigns': instance.linkedCampaigns,
      'created_at': instance.createdAt,
    };

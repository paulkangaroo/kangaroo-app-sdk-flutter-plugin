// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geofences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeofencesModel _$GeofencesModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GeofencesModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = GeofencesModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => GeofenceModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$GeofencesModelToJson(GeofencesModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

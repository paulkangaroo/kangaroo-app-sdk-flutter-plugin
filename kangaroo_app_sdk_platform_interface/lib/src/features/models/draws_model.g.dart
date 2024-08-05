// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draws_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrawsModel _$DrawsModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'DrawsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = DrawsModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Draw.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$DrawsModelToJson(DrawsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

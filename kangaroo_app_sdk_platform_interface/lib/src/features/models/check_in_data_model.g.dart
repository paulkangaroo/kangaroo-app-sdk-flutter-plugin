// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInDataModel _$CheckInDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CheckInDataModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'amount',
            'points',
            'name',
            'created_at',
            'updated_at'
          ],
        );
        final val = CheckInDataModel(
          id: $checkedConvert('id', (v) => v as int?),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          points: $checkedConvert('points', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'updatedAt': 'updated_at'},
    );

Map<String, dynamic> _$CheckInDataModelToJson(CheckInDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'points': instance.points,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

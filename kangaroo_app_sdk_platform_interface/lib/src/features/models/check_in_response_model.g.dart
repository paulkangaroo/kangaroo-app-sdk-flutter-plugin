// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInResponseModel _$CheckInResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CheckInResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = CheckInResponseModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : CheckInDataModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CheckInResponseModelToJson(
        CheckInResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

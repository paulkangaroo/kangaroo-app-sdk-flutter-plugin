// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spin_to_win_prizes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpinToWinPrizesModel _$SpinToWinPrizesModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SpinToWinPrizesModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = SpinToWinPrizesModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : SpinToWinPrizesData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$SpinToWinPrizesModelToJson(
        SpinToWinPrizesModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

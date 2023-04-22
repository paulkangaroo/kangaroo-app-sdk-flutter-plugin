// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spin_to_win_prizes_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpinToWinPrizesData _$SpinToWinPrizesDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SpinToWinPrizesData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['spin_win_id', 'spin_prizes'],
        );
        final val = SpinToWinPrizesData(
          spinWinId: $checkedConvert('spin_win_id', (v) => v as int?),
          spinPrizes: $checkedConvert(
              'spin_prizes',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PrizeModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'spinWinId': 'spin_win_id',
        'spinPrizes': 'spin_prizes'
      },
    );

Map<String, dynamic> _$SpinToWinPrizesDataToJson(
        SpinToWinPrizesData instance) =>
    <String, dynamic>{
      'spin_win_id': instance.spinWinId,
      'spin_prizes': instance.spinPrizes?.map((e) => e.toJson()).toList(),
    };

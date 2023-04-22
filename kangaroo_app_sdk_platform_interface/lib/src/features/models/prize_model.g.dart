// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prize_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrizeModel _$PrizeModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'PrizeModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['fill_style', 'text', 'desc', 'prize_id'],
        );
        final val = PrizeModel(
          fillStyle: $checkedConvert('fill_style', (v) => v as String?),
          text: $checkedConvert('text', (v) => v as String?),
          desc: $checkedConvert('desc', (v) => v as String?),
          prizeId: $checkedConvert('prize_id', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {'fillStyle': 'fill_style', 'prizeId': 'prize_id'},
    );

Map<String, dynamic> _$PrizeModelToJson(PrizeModel instance) =>
    <String, dynamic>{
      'fill_style': instance.fillStyle,
      'text': instance.text,
      'desc': instance.desc,
      'prize_id': instance.prizeId,
    };

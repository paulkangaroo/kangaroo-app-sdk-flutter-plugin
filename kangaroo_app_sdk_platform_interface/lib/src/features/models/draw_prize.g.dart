// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw_prize.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrawPrize _$DrawPrizeFromJson(Map<String, dynamic> json) => $checkedCreate(
      'DrawPrize',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'title',
            'description',
            'draw_id',
            'offer',
            'catalog_item',
            'enabled',
            'is_expired',
            'languages'
          ],
        );
        final val = DrawPrize(
          id: $checkedConvert('id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          drawId: $checkedConvert('draw_id', (v) => v as int?),
          offer: $checkedConvert(
              'offer',
              (v) => v == null
                  ? null
                  : OfferModel.fromJson(v as Map<String, dynamic>)),
          catalogItem: $checkedConvert(
              'catalog_item',
              (v) => v == null
                  ? null
                  : RewardModel.fromJson(v as Map<String, dynamic>)),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          isExpired: $checkedConvert('is_expired', (v) => v as bool?),
          languages: $checkedConvert(
              'languages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Languages.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'drawId': 'draw_id',
        'catalogItem': 'catalog_item',
        'isExpired': 'is_expired'
      },
    );

Map<String, dynamic> _$DrawPrizeToJson(DrawPrize instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'draw_id': instance.drawId,
      'offer': instance.offer?.toJson(),
      'catalog_item': instance.catalogItem?.toJson(),
      'enabled': instance.enabled,
      'is_expired': instance.isExpired,
      'languages': instance.languages?.map((e) => e.toJson()).toList(),
    };

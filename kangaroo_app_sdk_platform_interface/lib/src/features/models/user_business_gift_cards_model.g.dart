// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_gift_cards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessGiftCardsModel _$UserBusinessGiftCardsModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessGiftCardsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = UserBusinessGiftCardsModel(
          data: $checkedConvert(
              'data', (v) => BusinessData.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : UserBusinessGiftCardsIncluded.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessGiftCardsModelToJson(
        UserBusinessGiftCardsModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'included': instance.included?.toJson(),
    };

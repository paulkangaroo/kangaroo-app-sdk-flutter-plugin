// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_gift_cards_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessGiftCardsIncluded _$UserBusinessGiftCardsIncludedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessGiftCardsIncluded',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['giftcards'],
        );
        final val = UserBusinessGiftCardsIncluded(
          giftcards: $checkedConvert(
              'giftcards',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => GiftCardModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessGiftCardsIncludedToJson(
        UserBusinessGiftCardsIncluded instance) =>
    <String, dynamic>{
      'giftcards': instance.giftcards?.map((e) => e.toJson()).toList(),
    };

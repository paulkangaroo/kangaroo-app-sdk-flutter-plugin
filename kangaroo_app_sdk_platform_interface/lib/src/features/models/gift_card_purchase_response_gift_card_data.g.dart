// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_purchase_response_gift_card_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardPurchaseResponseGiftCardData
    _$GiftCardPurchaseResponseGiftCardDataFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          'GiftCardPurchaseResponseGiftCardData',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              allowedKeys: const [
                'id',
                'title',
                'price',
                'currency',
                'quantity'
              ],
            );
            final val = GiftCardPurchaseResponseGiftCardData(
              id: $checkedConvert('id', (v) => v as int?),
              title: $checkedConvert('title', (v) => v as String?),
              price: $checkedConvert('price', (v) => (v as num?)?.toDouble()),
              currency: $checkedConvert('currency', (v) => v as String?),
              quantity: $checkedConvert('quantity', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$GiftCardPurchaseResponseGiftCardDataToJson(
        GiftCardPurchaseResponseGiftCardData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'currency': instance.currency,
      'quantity': instance.quantity,
    };

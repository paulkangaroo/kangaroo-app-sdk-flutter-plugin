// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardAction _$GiftCardActionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GiftCardAction',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['type'],
        );
        final val = GiftCardAction(
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$GiftCardActionToJson(GiftCardAction instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

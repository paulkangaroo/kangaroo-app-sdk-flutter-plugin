// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferAction _$OfferActionFromJson(Map<String, dynamic> json) => $checkedCreate(
      'OfferAction',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['type'],
        );
        final val = OfferAction(
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OfferActionToJson(OfferAction instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

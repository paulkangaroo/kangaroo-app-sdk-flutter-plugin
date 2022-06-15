// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_redemption_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferRedemptionModel _$OfferRedemptionModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'OfferRedemptionModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id'],
        );
        final val = OfferRedemptionModel(
          id: $checkedConvert('id', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$OfferRedemptionModelToJson(
        OfferRedemptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

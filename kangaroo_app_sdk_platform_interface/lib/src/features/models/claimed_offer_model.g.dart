// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claimed_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClaimedOfferModel _$ClaimedOfferModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ClaimedOfferModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = ClaimedOfferModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : OfferModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ClaimedOfferModelToJson(ClaimedOfferModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

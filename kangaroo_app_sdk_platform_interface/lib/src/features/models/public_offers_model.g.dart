// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicOffersModel _$PublicOffersModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicOffersModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicOffersModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicOffersModelToJson(PublicOffersModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

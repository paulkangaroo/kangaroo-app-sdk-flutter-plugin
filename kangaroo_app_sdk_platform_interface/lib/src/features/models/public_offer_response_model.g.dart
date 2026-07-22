// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_offer_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicOfferResponseModel _$PublicOfferResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicOfferResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicOfferResponseModel(
          data: $checkedConvert('data',
              (v) => PublicOfferModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicOfferResponseModelToJson(
        PublicOfferResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

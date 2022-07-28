// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_offers_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessOffersIncluded _$UserBusinessOffersIncludedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessOffersIncluded',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['offers'],
        );
        final val = UserBusinessOffersIncluded(
          offers: $checkedConvert(
              'offers',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessOffersIncludedToJson(
        UserBusinessOffersIncluded instance) =>
    <String, dynamic>{
      'offers': instance.offers?.map((e) => e.toJson()).toList(),
    };

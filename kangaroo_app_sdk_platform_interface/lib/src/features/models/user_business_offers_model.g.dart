// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessOffersModel _$UserBusinessOffersModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessOffersModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = UserBusinessOffersModel(
          data: $checkedConvert(
              'data', (v) => BusinessData.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : UserBusinessOffersIncluded.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessOffersModelToJson(
        UserBusinessOffersModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'included': instance.included?.toJson(),
    };

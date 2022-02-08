// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserOffersModel _$UserOffersModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserOffersModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = UserOffersModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserOffersModelToJson(UserOffersModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

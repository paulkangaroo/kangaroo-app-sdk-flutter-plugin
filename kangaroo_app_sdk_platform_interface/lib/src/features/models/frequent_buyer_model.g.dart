// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerModel _$FrequentBuyerModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'FrequentBuyerModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = FrequentBuyerModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserProfileDataModel.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : FrequentBuyerIncluded.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$FrequentBuyerModelToJson(FrequentBuyerModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };

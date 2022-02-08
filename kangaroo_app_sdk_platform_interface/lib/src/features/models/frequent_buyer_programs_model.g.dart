// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_programs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerProgramsModel _$FrequentBuyerProgramsModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'FrequentBuyerProgramsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = FrequentBuyerProgramsModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserProfileDataModel.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : FrequentBuyerProgramsIncluded.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$FrequentBuyerProgramsModelToJson(
        FrequentBuyerProgramsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };

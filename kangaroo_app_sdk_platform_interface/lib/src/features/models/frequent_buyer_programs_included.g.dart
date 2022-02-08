// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_programs_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerProgramsIncluded _$FrequentBuyerProgramsIncludedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'FrequentBuyerProgramsIncluded',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['frequent_buyer_programs'],
        );
        final val = FrequentBuyerProgramsIncluded(
          frequentBuyerPrograms: $checkedConvert(
              'frequent_buyer_programs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => FrequentBuyerProgramModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'frequentBuyerPrograms': 'frequent_buyer_programs'},
    );

Map<String, dynamic> _$FrequentBuyerProgramsIncludedToJson(
        FrequentBuyerProgramsIncluded instance) =>
    <String, dynamic>{
      'frequent_buyer_programs':
          instance.frequentBuyerPrograms?.map((e) => e.toJson()).toList(),
    };

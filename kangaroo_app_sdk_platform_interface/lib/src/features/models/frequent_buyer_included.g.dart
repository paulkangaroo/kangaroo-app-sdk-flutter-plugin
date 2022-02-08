// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerIncluded _$FrequentBuyerIncludedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'FrequentBuyerIncluded',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['frequent_buyer_programs'],
        );
        final val = FrequentBuyerIncluded(
          frequentBuyerPrograms: $checkedConvert(
              'frequent_buyer_programs',
              (v) => (v as List<dynamic>)
                  .map((e) => FrequentBuyerItemModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'frequentBuyerPrograms': 'frequent_buyer_programs'},
    );

Map<String, dynamic> _$FrequentBuyerIncludedToJson(
        FrequentBuyerIncluded instance) =>
    <String, dynamic>{
      'frequent_buyer_programs':
          instance.frequentBuyerPrograms.map((e) => e.toJson()).toList(),
    };

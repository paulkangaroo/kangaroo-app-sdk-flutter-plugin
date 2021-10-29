// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerIncluded _$FrequentBuyerIncludedFromJson(
        Map<String, dynamic> json) =>
    FrequentBuyerIncluded(
      frequentBuyerPrograms: (json['frequent_buyer_programs'] as List<dynamic>)
          .map(
              (e) => FrequentBuyerItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FrequentBuyerIncludedToJson(
        FrequentBuyerIncluded instance) =>
    <String, dynamic>{
      'frequent_buyer_programs':
          instance.frequentBuyerPrograms.map((e) => e.toJson()).toList(),
    };

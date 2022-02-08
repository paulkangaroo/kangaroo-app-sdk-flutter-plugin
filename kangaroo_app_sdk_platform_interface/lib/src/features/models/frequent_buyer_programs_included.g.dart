// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_programs_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerProgramsIncluded _$FrequentBuyerProgramsIncludedFromJson(
        Map<String, dynamic> json) =>
    FrequentBuyerProgramsIncluded(
      frequentBuyerPrograms: (json['frequent_buyer_programs'] as List<dynamic>?)
          ?.map((e) =>
              FrequentBuyerProgramModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FrequentBuyerProgramsIncludedToJson(
        FrequentBuyerProgramsIncluded instance) =>
    <String, dynamic>{
      'frequent_buyer_programs':
          instance.frequentBuyerPrograms?.map((e) => e.toJson()).toList(),
    };

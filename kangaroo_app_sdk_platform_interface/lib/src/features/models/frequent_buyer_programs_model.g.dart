// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_programs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerProgramsModel _$FrequentBuyerProgramsModelFromJson(
        Map<String, dynamic> json) =>
    FrequentBuyerProgramsModel(
      data: json['data'] == null
          ? null
          : UserProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
      included: json['included'] == null
          ? null
          : FrequentBuyerProgramsIncluded.fromJson(
              json['included'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FrequentBuyerProgramsModelToJson(
        FrequentBuyerProgramsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };

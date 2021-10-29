// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_branches_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessBranchesData _$BusinessBranchesDataFromJson(
        Map<String, dynamic> json) =>
    BusinessBranchesData(
      branches: (json['branches'] as List<dynamic>)
          .map((e) => Branch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BusinessBranchesDataToJson(
        BusinessBranchesData instance) =>
    <String, dynamic>{
      'branches': instance.branches.map((e) => e.toJson()).toList(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_branches_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessBranchesData _$BusinessBranchesDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'BusinessBranchesData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['branches'],
        );
        final val = BusinessBranchesData(
          branches: $checkedConvert(
              'branches',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$BusinessBranchesDataToJson(
        BusinessBranchesData instance) =>
    <String, dynamic>{
      'branches': instance.branches?.map((e) => e.toJson()).toList(),
    };

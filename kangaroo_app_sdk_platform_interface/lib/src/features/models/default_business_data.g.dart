// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_business_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultBusinessData _$DefaultBusinessDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DefaultBusinessData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['default_branch_id', 'default_business_id'],
        );
        final val = DefaultBusinessData(
          defaultBranchId:
              $checkedConvert('default_branch_id', (v) => v as String?),
          defaultBusinessId:
              $checkedConvert('default_business_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'defaultBranchId': 'default_branch_id',
        'defaultBusinessId': 'default_business_id'
      },
    );

Map<String, dynamic> _$DefaultBusinessDataToJson(
        DefaultBusinessData instance) =>
    <String, dynamic>{
      'default_branch_id': instance.defaultBranchId,
      'default_business_id': instance.defaultBusinessId,
    };

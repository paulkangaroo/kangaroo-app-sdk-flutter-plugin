// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amazon_redemption_branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmazonRedemptionBranchModel _$AmazonRedemptionBranchModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AmazonRedemptionBranchModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id'],
        );
        final val = AmazonRedemptionBranchModel(
          id: $checkedConvert('id', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AmazonRedemptionBranchModelToJson(
        AmazonRedemptionBranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

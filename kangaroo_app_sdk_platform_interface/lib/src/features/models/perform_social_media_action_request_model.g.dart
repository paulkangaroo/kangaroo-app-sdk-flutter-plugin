// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perform_social_media_action_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerformSocialMediaActionRequestModel
    _$PerformSocialMediaActionRequestModelFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          'PerformSocialMediaActionRequestModel',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              allowedKeys: const ['action_id', 'branch_id'],
            );
            final val = PerformSocialMediaActionRequestModel(
              actionId: $checkedConvert('action_id', (v) => v as int),
              branchId: $checkedConvert('branch_id', (v) => v as String),
            );
            return val;
          },
          fieldKeyMap: const {'actionId': 'action_id', 'branchId': 'branch_id'},
        );

Map<String, dynamic> _$PerformSocialMediaActionRequestModelToJson(
        PerformSocialMediaActionRequestModel instance) =>
    <String, dynamic>{
      'action_id': instance.actionId,
      'branch_id': instance.branchId,
    };

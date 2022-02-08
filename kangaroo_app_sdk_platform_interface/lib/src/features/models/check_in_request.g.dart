// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInRequest _$CheckInRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CheckInRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['branch_id', 'intent'],
        );
        final val = CheckInRequest(
          branchId: $checkedConvert('branch_id', (v) => v as String),
          intent: $checkedConvert('intent', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'branchId': 'branch_id'},
    );

Map<String, dynamic> _$CheckInRequestToJson(CheckInRequest instance) =>
    <String, dynamic>{
      'branch_id': instance.branchId,
      'intent': instance.intent,
    };

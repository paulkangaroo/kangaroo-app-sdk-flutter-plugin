// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInRequest _$CheckInRequestFromJson(Map<String, dynamic> json) =>
    CheckInRequest(
      branchId: json['branch_id'] as String,
      intent: json['intent'] as String,
    );

Map<String, dynamic> _$CheckInRequestToJson(CheckInRequest instance) =>
    <String, dynamic>{
      'branch_id': instance.branchId,
      'intent': instance.intent,
    };

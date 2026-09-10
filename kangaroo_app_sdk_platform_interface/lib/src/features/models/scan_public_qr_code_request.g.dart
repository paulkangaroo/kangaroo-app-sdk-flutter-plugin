// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_public_qr_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanPublicQrCodeRequest _$ScanPublicQrCodeRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ScanPublicQrCodeRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['business_id', 'token', 'platform_id'],
        );
        final val = ScanPublicQrCodeRequest(
          businessId: $checkedConvert('business_id', (v) => v as String),
          token: $checkedConvert('token', (v) => v as String),
          platformId: $checkedConvert('platform_id', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'businessId': 'business_id',
        'platformId': 'platform_id'
      },
    );

Map<String, dynamic> _$ScanPublicQrCodeRequestToJson(
        ScanPublicQrCodeRequest instance) =>
    <String, dynamic>{
      'business_id': instance.businessId,
      'token': instance.token,
      'platform_id': instance.platformId,
    };

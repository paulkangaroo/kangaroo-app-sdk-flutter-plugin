// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_receipt_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanReceiptRequest _$ScanReceiptRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ScanReceiptRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['qr_code_info', 'intent'],
        );
        final val = ScanReceiptRequest(
          qrCodeInfo: $checkedConvert('qr_code_info', (v) => v as String),
          intent: $checkedConvert('intent', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'qrCodeInfo': 'qr_code_info'},
    );

Map<String, dynamic> _$ScanReceiptRequestToJson(ScanReceiptRequest instance) =>
    <String, dynamic>{
      'qr_code_info': instance.qrCodeInfo,
      'intent': instance.intent,
    };

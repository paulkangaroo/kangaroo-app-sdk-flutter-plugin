// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_receipt_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanReceiptResponseModel _$ScanReceiptResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ScanReceiptResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['qr_code_info'],
        );
        final val = ScanReceiptResponseModel(
          qrCodeInfo: $checkedConvert('qr_code_info',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'qrCodeInfo': 'qr_code_info'},
    );

Map<String, dynamic> _$ScanReceiptResponseModelToJson(
        ScanReceiptResponseModel instance) =>
    <String, dynamic>{
      'qr_code_info': instance.qrCodeInfo,
    };

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
          allowedKeys: const ['data'],
        );
        final val = ScanReceiptResponseModel(
          data: $checkedConvert(
              'data',
              (v) => ScanReceiptResponseDataModel.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ScanReceiptResponseModelToJson(
        ScanReceiptResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

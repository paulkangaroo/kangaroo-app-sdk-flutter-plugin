// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_qr_code_scan_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicQrCodeScanResponseModel _$PublicQrCodeScanResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicQrCodeScanResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicQrCodeScanResponseModel(
          data: $checkedConvert(
              'data',
              (v) => PublicQrCodeScanResponseDataModel.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicQrCodeScanResponseModelToJson(
        PublicQrCodeScanResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_public_qr_code_scan_token_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPublicQrCodeScanTokenResponseModel
    _$GetPublicQrCodeScanTokenResponseModelFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetPublicQrCodeScanTokenResponseModel',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              allowedKeys: const ['expires_in', 'token_type', 'access_token'],
            );
            final val = GetPublicQrCodeScanTokenResponseModel(
              expiresIn:
                  $checkedConvert('expires_in', (v) => (v as num?)?.toInt()),
              tokenType: $checkedConvert('token_type', (v) => v as String?),
              accessToken: $checkedConvert('access_token', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {
            'expiresIn': 'expires_in',
            'tokenType': 'token_type',
            'accessToken': 'access_token'
          },
        );

Map<String, dynamic> _$GetPublicQrCodeScanTokenResponseModelToJson(
        GetPublicQrCodeScanTokenResponseModel instance) =>
    <String, dynamic>{
      'expires_in': instance.expiresIn,
      'token_type': instance.tokenType,
      'access_token': instance.accessToken,
    };

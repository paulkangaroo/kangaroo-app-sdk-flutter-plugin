// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_qr_code_scan_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicQrCodeScanTokenRequest _$PublicQrCodeScanTokenRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicQrCodeScanTokenRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['grant_type', 'scope'],
        );
        final val = PublicQrCodeScanTokenRequest(
          grantType: $checkedConvert('grant_type', (v) => v as String),
          scope: $checkedConvert('scope', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'grantType': 'grant_type'},
    );

Map<String, dynamic> _$PublicQrCodeScanTokenRequestToJson(
        PublicQrCodeScanTokenRequest instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'scope': instance.scope,
    };

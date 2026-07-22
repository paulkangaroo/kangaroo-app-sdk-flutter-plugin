/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'public_qr_code_scan_token_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicQrCodeScanTokenRequest {
  @JsonKey(name: "grant_type")
  final String grantType;

  @JsonKey(name: "scope")
  final String scope;

  PublicQrCodeScanTokenRequest({
    required this.grantType,
required this.scope,
  });

  factory PublicQrCodeScanTokenRequest.fromJson(Map<String, dynamic> data) => _$PublicQrCodeScanTokenRequestFromJson(data);

  Map<String, dynamic> toJson() => _$PublicQrCodeScanTokenRequestToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'scan_public_qr_code_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ScanPublicQrCodeRequest {
  @JsonKey(name: "business_id")
  final String businessId;

  @JsonKey(name: "token")
  final String token;

  @JsonKey(name: "platform_id")
  final int platformId;

  ScanPublicQrCodeRequest({
    required this.businessId,
required this.token,
required this.platformId,
  });

  factory ScanPublicQrCodeRequest.fromJson(Map<String, dynamic> data) => _$ScanPublicQrCodeRequestFromJson(data);

  Map<String, dynamic> toJson() => _$ScanPublicQrCodeRequestToJson(this);
}



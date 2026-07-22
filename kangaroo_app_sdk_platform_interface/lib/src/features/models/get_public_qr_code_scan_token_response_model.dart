/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'get_public_qr_code_scan_token_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GetPublicQrCodeScanTokenResponseModel {
  @JsonKey(name: "expires_in")
  final int? expiresIn;

  @JsonKey(name: "token_type")
  final String? tokenType;

  @JsonKey(name: "access_token")
  final String? accessToken;

  GetPublicQrCodeScanTokenResponseModel({
    required this.expiresIn,
    required this.tokenType,
    required this.accessToken,
  });

  factory GetPublicQrCodeScanTokenResponseModel.fromJson(Map<String, dynamic> data) => _$GetPublicQrCodeScanTokenResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$GetPublicQrCodeScanTokenResponseModelToJson(this);
}



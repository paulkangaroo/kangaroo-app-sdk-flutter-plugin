/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_qr_code_scan_response_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_qr_code_scan_response_data_model.dart';

part 'public_qr_code_scan_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicQrCodeScanResponseModel {
  @JsonKey(name: "data")
  final PublicQrCodeScanResponseDataModel data;

  PublicQrCodeScanResponseModel({
    required this.data,
  });

  factory PublicQrCodeScanResponseModel.fromJson(Map<String, dynamic> data) => _$PublicQrCodeScanResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicQrCodeScanResponseModelToJson(this);
}



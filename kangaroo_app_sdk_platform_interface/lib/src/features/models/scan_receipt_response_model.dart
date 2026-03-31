/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_receipt_response_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/scan_receipt_response_data_model.dart';

part 'scan_receipt_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ScanReceiptResponseModel {
  @JsonKey(name: "data")
  final ScanReceiptResponseDataModel data;

  ScanReceiptResponseModel({
    required this.data,
  });

  factory ScanReceiptResponseModel.fromJson(Map<String, dynamic> data) => _$ScanReceiptResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$ScanReceiptResponseModelToJson(this);
}



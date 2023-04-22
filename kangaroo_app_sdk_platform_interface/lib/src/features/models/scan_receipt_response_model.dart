/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'scan_receipt_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ScanReceiptResponseModel {
  final List<String>? qrCodeInfo;

  ScanReceiptResponseModel({
    required this.qrCodeInfo,
  });

  factory ScanReceiptResponseModel.fromJson(Map<String, dynamic> data) => _$ScanReceiptResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$ScanReceiptResponseModelToJson(this);
}



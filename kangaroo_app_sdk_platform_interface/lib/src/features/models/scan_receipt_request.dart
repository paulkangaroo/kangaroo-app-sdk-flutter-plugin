/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'scan_receipt_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ScanReceiptRequest {
  final String qrCodeInfo;

  final String intent;

  ScanReceiptRequest({
    required this.qrCodeInfo,
required this.intent,
  });

  factory ScanReceiptRequest.fromJson(Map<String, dynamic> data) => _$ScanReceiptRequestFromJson(data);

  Map<String, dynamic> toJson() => _$ScanReceiptRequestToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'transaction_details.g.dart';

/// Details about this transaction and holds value of each custom field for this transaction 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransactionDetails {
  @JsonKey(name: "external_order_id")
  final String? externalOrderId;

  @JsonKey(name: "custom_field_1")
  final String? customField1;

  @JsonKey(name: "custom_field_2")
  final String? customField2;

  @JsonKey(name: "custom_field_3")
  final String? customField3;

  @JsonKey(name: "custom_field_4")
  final String? customField4;

  @JsonKey(name: "custom_field_5")
  final String? customField5;

  TransactionDetails({
    required this.externalOrderId,
    required this.customField1,
    required this.customField2,
    required this.customField3,
    required this.customField4,
    required this.customField5,
  });

  factory TransactionDetails.fromJson(Map<String, dynamic> data) => _$TransactionDetailsFromJson(data);

  Map<String, dynamic> toJson() => _$TransactionDetailsToJson(this);
}



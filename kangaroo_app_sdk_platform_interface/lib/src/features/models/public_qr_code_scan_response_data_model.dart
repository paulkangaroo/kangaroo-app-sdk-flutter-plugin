/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/customer_details_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/customer_details_model.dart';

part 'public_qr_code_scan_response_data_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicQrCodeScanResponseDataModel {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "amount")
  final double? amount;

  @JsonKey(name: "points")
  final double? points;

  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "transaction_type")
  final int? transactionType;

  @JsonKey(name: "comments")
  final String? comments;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @JsonKey(name: "customer")
  final CustomerDetailsModel? customer;

  PublicQrCodeScanResponseDataModel({
    required this.id,
    required this.amount,
    required this.points,
    required this.name,
    required this.transactionType,
    required this.comments,
    required this.createdAt,
    required this.updatedAt,
    required this.customer,
  });

  factory PublicQrCodeScanResponseDataModel.fromJson(Map<String, dynamic> data) => _$PublicQrCodeScanResponseDataModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicQrCodeScanResponseDataModelToJson(this);
}



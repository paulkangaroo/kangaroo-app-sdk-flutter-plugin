/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

part 'transfer_data_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransferDataModel {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "amount")
  final double? amount;

  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @JsonKey(name: "customer")
  final UserProfileDataModel? customer;

  TransferDataModel({
    required this.id,
    required this.amount,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.customer,
  });

  factory TransferDataModel.fromJson(Map<String, dynamic> data) => _$TransferDataModelFromJson(data);

  Map<String, dynamic> toJson() => _$TransferDataModelToJson(this);
}



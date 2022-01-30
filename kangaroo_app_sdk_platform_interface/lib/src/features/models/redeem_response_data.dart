/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

part 'redeem_response_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class RedeemResponseData {
  final int id;

  final double? amount;

  final int? points;

  final String? name;

  final String? createdAt;

  final String? updatedAt;

  final UserProfileModel? customer;

  RedeemResponseData({
    required this.id,
    required this.amount,
    required this.points,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.customer,
  });

  factory RedeemResponseData.fromJson(Map<String, dynamic> data) => _$RedeemResponseDataFromJson(data);

  Map<String, dynamic> toJson() => _$RedeemResponseDataToJson(this);
}



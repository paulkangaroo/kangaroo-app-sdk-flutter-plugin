/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redemption_model.dart';


part 'redeem_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class RedeemRequest {
  final String branchId;

  ///A list of rewards to redeem. 
  final List<RedemptionModel> catalogItems;

  final String intent;

  RedeemRequest({
    required this.branchId,
required this.catalogItems,
required this.intent,
  });

  factory RedeemRequest.fromJson(Map<String, dynamic> data) => _$RedeemRequestFromJson(data);

  Map<String, dynamic> toJson() => _$RedeemRequestToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/amazon_redemption_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/amazon_redemption_branch_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/amazon_redemption_customer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/amazon_redemption_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/amazon_redemption_branch_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/amazon_redemption_customer_model.dart';

part 'redeem_amazon_item_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class RedeemAmazonItemRequest {
  @JsonKey(name: "intent")
  final String intent;

  ///A list of rewards to redeem. 
  @JsonKey(name: "catalog_items")
  final List<AmazonRedemptionModel> catalogItems;

  @JsonKey(name: "trial_mode")
  final bool trialMode;

  @JsonKey(name: "branch")
  final AmazonRedemptionBranchModel branch;

  @JsonKey(name: "customer")
  final AmazonRedemptionCustomerModel customer;

  RedeemAmazonItemRequest({
    required this.intent,
required this.catalogItems,
required this.trialMode,
required this.branch,
required this.customer,
  });

  factory RedeemAmazonItemRequest.fromJson(Map<String, dynamic> data) => _$RedeemAmazonItemRequestFromJson(data);

  Map<String, dynamic> toJson() => _$RedeemAmazonItemRequestToJson(this);
}



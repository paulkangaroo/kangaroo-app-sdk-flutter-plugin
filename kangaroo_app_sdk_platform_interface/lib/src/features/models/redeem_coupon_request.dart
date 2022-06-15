/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/coupon_redemption_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_redemption_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/coupon_redemption_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_redemption_model.dart';

part 'redeem_coupon_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class RedeemCouponRequest {
  final String intent;

  final String pinCode;

  ///The coupon being redeemed 
  final CouponRedemptionModel coupon;

  ///The offer that created this coupon 
  final OfferRedemptionModel offer;

  final String? int;

  RedeemCouponRequest({
    required this.intent,
required this.pinCode,
required this.coupon,
required this.offer,
    required this.int,
  });

  factory RedeemCouponRequest.fromJson(Map<String, dynamic> data) => _$RedeemCouponRequestFromJson(data);

  Map<String, dynamic> toJson() => _$RedeemCouponRequestToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

part 'coupon_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CouponModel {
  ///A unique ID identifying this coupon 
  @JsonKey(name: "id")
  final int? id;

  ///The coupon title. 
  @JsonKey(name: "title")
  final String? title;

  ///The coupon description. 
  @JsonKey(name: "description")
  final String? description;

  ///The terms and conditions attached to this coupon. 
  @JsonKey(name: "terms_conditions")
  final String? termsConditions;

  @JsonKey(name: "qrcode")
  final String? qrcode;

  @JsonKey(name: "coupon_locked")
  final bool? couponLocked;

  @JsonKey(name: "coupon_redeemed")
  final bool? couponRedeemed;

  @JsonKey(name: "coupon_type")
  final String? couponType;

  @JsonKey(name: "expires_at")
  final String? expiresAt;

  @JsonKey(name: "offer")
  final OfferModel? offer;

  CouponModel({
    required this.id,
    required this.title,
    required this.description,
    required this.termsConditions,
    required this.qrcode,
    required this.couponLocked,
    required this.couponRedeemed,
    required this.couponType,
    required this.expiresAt,
    required this.offer,
  });

  factory CouponModel.fromJson(Map<String, dynamic> data) => _$CouponModelFromJson(data);

  Map<String, dynamic> toJson() => _$CouponModelToJson(this);
}



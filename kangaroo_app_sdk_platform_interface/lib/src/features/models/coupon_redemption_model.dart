/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'coupon_redemption_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CouponRedemptionModel {
  ///A unique ID identifying this coupon. 
  final int id;

  CouponRedemptionModel({
    required this.id,
  });

  factory CouponRedemptionModel.fromJson(Map<String, dynamic> data) => _$CouponRedemptionModelFromJson(data);

  Map<String, dynamic> toJson() => _$CouponRedemptionModelToJson(this);
}



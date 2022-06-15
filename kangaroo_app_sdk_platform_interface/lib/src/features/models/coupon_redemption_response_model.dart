/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/coupon_redemption_response_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/coupon_redemption_response_data.dart';

part 'coupon_redemption_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CouponRedemptionResponseModel {
  final CouponRedemptionResponseData data;

  CouponRedemptionResponseModel({
    required this.data,
  });

  factory CouponRedemptionResponseModel.fromJson(Map<String, dynamic> data) => _$CouponRedemptionResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$CouponRedemptionResponseModelToJson(this);
}



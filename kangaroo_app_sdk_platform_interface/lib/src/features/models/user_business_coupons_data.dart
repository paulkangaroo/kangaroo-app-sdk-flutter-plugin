/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_coupons_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_coupons_data.dart';

part 'user_business_coupons_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessCouponsData {
  ///Contains a list of all coupons available to this user 
  @JsonKey(name: "coupons")
  final UserCouponsData? coupons;

  UserBusinessCouponsData({
    required this.coupons,
  });

  factory UserBusinessCouponsData.fromJson(Map<String, dynamic> data) => _$UserBusinessCouponsDataFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessCouponsDataToJson(this);
}



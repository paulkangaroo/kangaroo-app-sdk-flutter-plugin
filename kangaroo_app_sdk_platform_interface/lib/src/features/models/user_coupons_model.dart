/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_coupons_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_coupons_data.dart';

part 'user_coupons_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserCouponsModel {
  ///Contains a list of all coupons available to this user 
  final UserCouponsData? data;

  UserCouponsModel({
    required this.data,
  });

  factory UserCouponsModel.fromJson(Map<String, dynamic> data) => _$UserCouponsModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserCouponsModelToJson(this);
}



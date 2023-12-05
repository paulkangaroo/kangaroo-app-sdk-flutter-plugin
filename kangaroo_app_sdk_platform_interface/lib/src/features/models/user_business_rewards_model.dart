/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_data.dart';

part 'user_business_rewards_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessRewardsModel {
  ///Contains business data 
  @JsonKey(name: "data")
  final BusinessData? data;

  ///Contains all rewards items 
  @JsonKey(name: "included")
  final UserRewardsData? included;

  UserBusinessRewardsModel({
    required this.data,
    required this.included,
  });

  factory UserBusinessRewardsModel.fromJson(Map<String, dynamic> data) => _$UserBusinessRewardsModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessRewardsModelToJson(this);
}



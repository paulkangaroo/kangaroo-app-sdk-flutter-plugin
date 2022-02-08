/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_data.dart';

part 'user_rewards_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class UserRewardsModel {
  ///Contains a list of all rewards available to this user 
  final UserRewardsData? data;

  UserRewardsModel({
    required this.data,
  });

  factory UserRewardsModel.fromJson(Map<String, dynamic> data) => _$UserRewardsModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserRewardsModelToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/rewards.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/rewards.dart';

part 'user_rewards_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserRewardsData {
  ///Contains a list of all rewards available to this user 
  final Rewards? catalogItems;

  UserRewardsData({
    required this.catalogItems,
  });

  factory UserRewardsData.fromJson(Map<String, dynamic> data) => _$UserRewardsDataFromJson(data);

  Map<String, dynamic> toJson() => _$UserRewardsDataToJson(this);
}



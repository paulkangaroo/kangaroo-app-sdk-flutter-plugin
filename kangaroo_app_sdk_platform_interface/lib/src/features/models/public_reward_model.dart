/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_model.dart';

part 'public_reward_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicRewardModel {
  final RewardModel data;

  PublicRewardModel({
    required this.data,
  });

  factory PublicRewardModel.fromJson(Map<String, dynamic> data) => _$PublicRewardModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicRewardModelToJson(this);
}



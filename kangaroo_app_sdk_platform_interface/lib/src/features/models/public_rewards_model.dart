/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/rewards.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/rewards.dart';

part 'public_rewards_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicRewardsModel {
  final Rewards? data;

  PublicRewardsModel({
    required this.data,
  });

  factory PublicRewardsModel.fromJson(Map<String, dynamic> data) => _$PublicRewardsModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicRewardsModelToJson(this);
}



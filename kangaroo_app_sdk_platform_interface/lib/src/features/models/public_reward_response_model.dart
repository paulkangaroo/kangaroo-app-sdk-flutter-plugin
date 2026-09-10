/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_reward_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_reward_model.dart';

part 'public_reward_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicRewardResponseModel {
  @JsonKey(name: "data")
  final PublicRewardModel data;

  PublicRewardResponseModel({
    required this.data,
  });

  factory PublicRewardResponseModel.fromJson(Map<String, dynamic> data) => _$PublicRewardResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicRewardResponseModelToJson(this);
}



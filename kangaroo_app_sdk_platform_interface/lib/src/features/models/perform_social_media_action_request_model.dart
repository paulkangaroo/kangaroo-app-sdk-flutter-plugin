/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'perform_social_media_action_request_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PerformSocialMediaActionRequestModel {
  final int actionId;

  final String branchId;

  PerformSocialMediaActionRequestModel({
    required this.actionId,
required this.branchId,
  });

  factory PerformSocialMediaActionRequestModel.fromJson(Map<String, dynamic> data) => _$PerformSocialMediaActionRequestModelFromJson(data);

  Map<String, dynamic> toJson() => _$PerformSocialMediaActionRequestModelToJson(this);
}



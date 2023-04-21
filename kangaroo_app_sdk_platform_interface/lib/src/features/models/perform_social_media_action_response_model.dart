/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/perform_action_response_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/perform_action_response_model.dart';

part 'perform_social_media_action_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PerformSocialMediaActionResponseModel {
  ///Contains social media action data 
  final PerformActionResponseModel? data;

  PerformSocialMediaActionResponseModel({
    required this.data,
  });

  factory PerformSocialMediaActionResponseModel.fromJson(Map<String, dynamic> data) => _$PerformSocialMediaActionResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$PerformSocialMediaActionResponseModelToJson(this);
}



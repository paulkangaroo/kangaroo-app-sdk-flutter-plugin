/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_campaigns_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_campaigns_data_model.dart';

part 'public_campaigns_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicCampaignsResponseModel {
  @JsonKey(name: "data")
  final PublicCampaignsDataModel data;

  PublicCampaignsResponseModel({
    required this.data,
  });

  factory PublicCampaignsResponseModel.fromJson(Map<String, dynamic> data) => _$PublicCampaignsResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicCampaignsResponseModelToJson(this);
}



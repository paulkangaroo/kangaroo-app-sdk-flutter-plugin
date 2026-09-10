/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/campaign.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/campaign.dart';

part 'trigger_geofence_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TriggerGeofenceResponseModel {
  @JsonKey(name: "data")
  final Campaign data;

  TriggerGeofenceResponseModel({
    required this.data,
  });

  factory TriggerGeofenceResponseModel.fromJson(Map<String, dynamic> data) => _$TriggerGeofenceResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$TriggerGeofenceResponseModelToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'trigger_geofence_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TriggerGeofenceRequest {
  @JsonKey(name: "geofence_id")
  final int geofenceId;

  @JsonKey(name: "trigger_condition")
  final String triggerCondition;

  TriggerGeofenceRequest({
    required this.geofenceId,
required this.triggerCondition,
  });

  factory TriggerGeofenceRequest.fromJson(Map<String, dynamic> data) => _$TriggerGeofenceRequestFromJson(data);

  Map<String, dynamic> toJson() => _$TriggerGeofenceRequestToJson(this);
}



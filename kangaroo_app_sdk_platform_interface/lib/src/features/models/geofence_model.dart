/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'geofence_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GeofenceModel {
  ///A unique ID identifying this geofence 
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "latitude")
  final double? latitude;

  @JsonKey(name: "longitude")
  final double? longitude;

  @JsonKey(name: "radius")
  final double? radius;

  @JsonKey(name: "track")
  final bool? track;

  @JsonKey(name: "use_exact_address")
  final bool? useExactAddress;

  @JsonKey(name: "active")
  final bool? active;

  @JsonKey(name: "status")
  final String? status;

  @JsonKey(name: "linked_campaigns")
  final List<int>? linkedCampaigns;

  @JsonKey(name: "created_at")
  final String? createdAt;

  GeofenceModel({
    required this.id,
    required this.title,
    required this.latitude,
    required this.longitude,
    required this.radius,
    required this.track,
    required this.useExactAddress,
    required this.active,
    required this.status,
    required this.linkedCampaigns,
    required this.createdAt,
  });

  factory GeofenceModel.fromJson(Map<String, dynamic> data) => _$GeofenceModelFromJson(data);

  Map<String, dynamic> toJson() => _$GeofenceModelToJson(this);
}



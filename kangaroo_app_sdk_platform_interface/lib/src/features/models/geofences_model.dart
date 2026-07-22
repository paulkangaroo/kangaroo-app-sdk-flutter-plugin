/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/geofence_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/geofence_model.dart';

part 'geofences_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GeofencesModel {
  ///A list of of geofences of a business 
  @JsonKey(name: "data")
  final List<GeofenceModel> data;

  GeofencesModel({
    required this.data,
  });

  factory GeofencesModel.fromJson(Map<String, dynamic> data) => _$GeofencesModelFromJson(data);

  Map<String, dynamic> toJson() => _$GeofencesModelToJson(this);
}



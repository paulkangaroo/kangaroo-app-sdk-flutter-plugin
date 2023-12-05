/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'perform_action_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PerformActionResponseModel {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "status")
  final String? status;

  PerformActionResponseModel({
    required this.id,
    required this.status,
  });

  factory PerformActionResponseModel.fromJson(Map<String, dynamic> data) => _$PerformActionResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$PerformActionResponseModelToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'check_in_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CheckInRequest {
  @JsonKey(name: "branch_id")
  final String branchId;

  @JsonKey(name: "intent")
  final String intent;

  CheckInRequest({
    required this.branchId,
required this.intent,
  });

  factory CheckInRequest.fromJson(Map<String, dynamic> data) => _$CheckInRequestFromJson(data);

  Map<String, dynamic> toJson() => _$CheckInRequestToJson(this);
}



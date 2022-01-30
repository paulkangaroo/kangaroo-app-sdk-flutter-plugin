/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'check_in_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class CheckInRequest {
  final String branchId;

  final String intent;

  CheckInRequest({
    required this.branchId,
required this.intent,
  });

  factory CheckInRequest.fromJson(Map<String, dynamic> data) => _$CheckInRequestFromJson(data);

  Map<String, dynamic> toJson() => _$CheckInRequestToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'user_pin_reset_request.g.dart';

/// User PIN reset request status
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserPinResetRequest {
  ///The response code for the pin reset request. Anything within the 200 range indicates a success  
  final int statusCode;

  ///The message and status returned by the pin reset request 
  final String message;

  ///A description of the pin reset request 
  final String description;

  UserPinResetRequest({
    required this.statusCode,
required this.message,
required this.description,
  });

  factory UserPinResetRequest.fromJson(Map<String, dynamic> data) => _$UserPinResetRequestFromJson(data);

  Map<String, dynamic> toJson() => _$UserPinResetRequestToJson(this);
}



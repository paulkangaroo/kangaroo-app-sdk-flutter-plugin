/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'pin_reset_with_token_request_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PinResetWithTokenRequestModel {
  @JsonKey(name: "token")
  final String token;

  @JsonKey(name: "pin_code")
  final String pinCode;

  @JsonKey(name: "use_same_pin")
  final bool useSamePin;

  PinResetWithTokenRequestModel({
    required this.token,
required this.pinCode,
required this.useSamePin,
  });

  factory PinResetWithTokenRequestModel.fromJson(Map<String, dynamic> data) => _$PinResetWithTokenRequestModelFromJson(data);

  Map<String, dynamic> toJson() => _$PinResetWithTokenRequestModelToJson(this);
}



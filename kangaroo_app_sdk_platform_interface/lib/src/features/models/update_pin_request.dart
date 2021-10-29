/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';

part 'update_pin_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class UpdatePinRequest {
  ///The new PIN 
  final String pinCode;

  UpdatePinRequest({
    required this.pinCode,
  });

  factory UpdatePinRequest.fromJson(Map<String, dynamic> data) => _$UpdatePinRequestFromJson(data);

  Map<String, dynamic> toJson() => _$UpdatePinRequestToJson(this);
}



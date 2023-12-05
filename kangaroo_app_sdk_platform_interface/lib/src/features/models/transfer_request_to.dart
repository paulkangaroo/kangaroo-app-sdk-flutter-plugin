/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'transfer_request_to.g.dart';

/// The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransferRequestTo {
  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "phone")
  final String? phone;

  @JsonKey(name: "country_code")
  final String? countryCode;

  @JsonKey(name: "email")
  final String? email;

  TransferRequestTo({
    required this.name,
    required this.phone,
    required this.countryCode,
    required this.email,
  });

  factory TransferRequestTo.fromJson(Map<String, dynamic> data) => _$TransferRequestToFromJson(data);

  Map<String, dynamic> toJson() => _$TransferRequestToToJson(this);
}



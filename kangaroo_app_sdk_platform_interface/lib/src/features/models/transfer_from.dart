/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';

part 'transfer_from.g.dart';

/// The recipient data for this transfer. Either a phone number or an email address is required. If a phone number is used, the two character ISO country code must be supplied as well. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class TransferFrom {
  final String name;

  final String? phone;

  final String? countryCode;

  final String? email;

  TransferFrom({
    required this.name,
    required this.phone,
    required this.countryCode,
    required this.email,
  });

  factory TransferFrom.fromJson(Map<String, dynamic> data) => _$TransferFromFromJson(data);

  Map<String, dynamic> toJson() => _$TransferFromToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';

part 'branch_phone.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class BranchPhone {
  final String? number;

  final String? countryCode;

  final String? nationalFormat;

  final String? intlFormat;

  BranchPhone({
    required this.number,
    required this.countryCode,
    required this.nationalFormat,
    required this.intlFormat,
  });

  factory BranchPhone.fromJson(Map<String, dynamic> data) => _$BranchPhoneFromJson(data);

  Map<String, dynamic> toJson() => _$BranchPhoneToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'error.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Error {
  final int code;

  final String message;

  Error({
    required this.code,
required this.message,
  });

  factory Error.fromJson(Map<String, dynamic> data) => _$ErrorFromJson(data);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}



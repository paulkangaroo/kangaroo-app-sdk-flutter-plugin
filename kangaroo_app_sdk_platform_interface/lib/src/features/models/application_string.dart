/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'application_string.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ApplicationString {
  final int? id;

  final String? key;

  final String? string;

  final String? createdAt;

  ApplicationString({
    required this.id,
    required this.key,
    required this.string,
    required this.createdAt,
  });

  factory ApplicationString.fromJson(Map<String, dynamic> data) => _$ApplicationStringFromJson(data);

  Map<String, dynamic> toJson() => _$ApplicationStringToJson(this);
}



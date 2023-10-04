/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'archive_response_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ArchiveResponseData {
  final int id;

  final String? type;

  final int? key;

  final String? createdAt;

  ArchiveResponseData({
    required this.id,
    required this.type,
    required this.key,
    required this.createdAt,
  });

  factory ArchiveResponseData.fromJson(Map<String, dynamic> data) => _$ArchiveResponseDataFromJson(data);

  Map<String, dynamic> toJson() => _$ArchiveResponseDataToJson(this);
}



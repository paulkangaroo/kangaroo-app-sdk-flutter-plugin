/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'archive_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ArchiveRequest {
  final String businessId;

  final String type;

  final int key;

  ArchiveRequest({
    required this.businessId,
required this.type,
required this.key,
  });

  factory ArchiveRequest.fromJson(Map<String, dynamic> data) => _$ArchiveRequestFromJson(data);

  Map<String, dynamic> toJson() => _$ArchiveRequestToJson(this);
}



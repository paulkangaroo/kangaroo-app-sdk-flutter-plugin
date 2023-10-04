/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/archive_response_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/archive_response_data.dart';

part 'archive_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ArchiveResponseModel {
  final ArchiveResponseData data;

  ArchiveResponseModel({
    required this.data,
  });

  factory ArchiveResponseModel.fromJson(Map<String, dynamic> data) => _$ArchiveResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$ArchiveResponseModelToJson(this);
}



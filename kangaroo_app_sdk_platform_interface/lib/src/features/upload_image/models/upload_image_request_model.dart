/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/upload_image/models/k_r_multi_part_form_file_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/upload_image/models/k_r_multi_part_form_file_model.dart';

part 'upload_image_request_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UploadImageRequestModel {

  @JsonKey(name: "module")
  final int module;

  @JsonKey(name: "images")
  final List<KRMultiPartFormFileModel>? images;

  UploadImageRequestModel({
    required this.module,
    required this.images,
  });

  factory UploadImageRequestModel.fromJson(Map<String, dynamic> data) => _$UploadImageRequestModelFromJson(data);

  Map<String, dynamic> toJson() => _$UploadImageRequestModelToJson(this);
}



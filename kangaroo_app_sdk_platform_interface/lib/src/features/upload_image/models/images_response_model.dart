/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image_model.dart';

part 'images_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ImagesResponseModel {
  @JsonKey(name: "data")
  final ImageModel data;

  ImagesResponseModel({
    required this.data,
  });

  factory ImagesResponseModel.fromJson(Map<String, dynamic> data) => _$ImagesResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$ImagesResponseModelToJson(this);
}



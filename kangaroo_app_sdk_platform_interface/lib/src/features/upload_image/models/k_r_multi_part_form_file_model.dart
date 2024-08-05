/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'k_r_multi_part_form_file_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class KRMultiPartFormFileModel {
  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "filePath")
  final String? filePath;

  KRMultiPartFormFileModel({
    required this.name,
    required this.filePath,
  });

  factory KRMultiPartFormFileModel.fromJson(Map<String, dynamic> data) => _$KRMultiPartFormFileModelFromJson(data);

  Map<String, dynamic> toJson() => _$KRMultiPartFormFileModelToJson(this);
}



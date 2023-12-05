/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

part 'public_branches_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicBranchesModel {
  @JsonKey(name: "data")
  final List<Branch>? data;

  PublicBranchesModel({
    required this.data,
  });

  factory PublicBranchesModel.fromJson(Map<String, dynamic> data) => _$PublicBranchesModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicBranchesModelToJson(this);
}



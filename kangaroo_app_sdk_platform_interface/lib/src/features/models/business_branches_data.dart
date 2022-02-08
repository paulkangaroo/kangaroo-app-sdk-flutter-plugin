/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

part 'business_branches_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class BusinessBranchesData {
  final List<Branch>? branches;

  BusinessBranchesData({
    required this.branches,
  });

  factory BusinessBranchesData.fromJson(Map<String, dynamic> data) => _$BusinessBranchesDataFromJson(data);

  Map<String, dynamic> toJson() => _$BusinessBranchesDataToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_programs_included.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_programs_included.dart';

part 'frequent_buyer_programs_model.g.dart';

/// Frequent buyer programs for this business
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class FrequentBuyerProgramsModel {
  ///Contains all user data 
  final UserProfileDataModel? data;

  ///Contains frequent buyer programs 
  final FrequentBuyerProgramsIncluded? included;

  FrequentBuyerProgramsModel({
    required this.data,
    required this.included,
  });

  factory FrequentBuyerProgramsModel.fromJson(Map<String, dynamic> data) => _$FrequentBuyerProgramsModelFromJson(data);

  Map<String, dynamic> toJson() => _$FrequentBuyerProgramsModelToJson(this);
}



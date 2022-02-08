/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_included.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_included.dart';

part 'frequent_buyer_model.g.dart';

/// Frequent Buyer Model containing list of Frequent Buyer program
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class FrequentBuyerModel {
  ///Contains all user data 
  final UserProfileDataModel? data;

  ///Contains all Frequent buyer items 
  final FrequentBuyerIncluded? included;

  FrequentBuyerModel({
    required this.data,
    required this.included,
  });

  factory FrequentBuyerModel.fromJson(Map<String, dynamic> data) => _$FrequentBuyerModelFromJson(data);

  Map<String, dynamic> toJson() => _$FrequentBuyerModelToJson(this);
}



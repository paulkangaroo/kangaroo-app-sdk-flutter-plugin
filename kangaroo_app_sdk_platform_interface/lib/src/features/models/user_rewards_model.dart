/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/meta.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/search_refinement.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/meta.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/search_refinement.dart';


part 'user_rewards_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserRewardsModel {
  ///Contains a list of all rewards available to this user 
  @JsonKey(name: "data")
  final UserRewardsData? data;

  @JsonKey(name: "meta")
  final Meta? meta;

  @JsonKey(name: "searchRefinements")
  final List<SearchRefinement>? searchRefinements;

  @JsonKey(name: "refinementMatchCount")
  final int? refinementMatchCount;

  UserRewardsModel({
    required this.data,
    required this.meta,
    required this.searchRefinements,
    required this.refinementMatchCount,
  });

  factory UserRewardsModel.fromJson(Map<String, dynamic> data) => _$UserRewardsModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserRewardsModelToJson(this);
}



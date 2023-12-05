/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw_branches.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw_rule.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw_prize.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw_branches.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw_rule.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw_prize.dart';

part 'draw.g.dart';

/// A business banner.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Draw {
  ///Unique draw id. 
  @JsonKey(name: "id")
  final int? id;

  ///start date of the draw. 
  @JsonKey(name: "start_date")
  final String? startDate;

  ///end date of the draw. 
  @JsonKey(name: "end_date")
  final String? endDate;

  ///The draw title. 
  @JsonKey(name: "title")
  final String? title;

  ///The draw description. 
  @JsonKey(name: "description")
  final String? description;

  ///The images attached to this draw. There are 3 available sizes: thumbnail, medium, and large.  
  @JsonKey(name: "images")
  final List<Image>? images;

  ///If this draw is enabled or not. 
  @JsonKey(name: "enabled")
  final bool? enabled;

  ///If this draw is expired or not. 
  @JsonKey(name: "is_expired")
  final bool? isExpired;

  @JsonKey(name: "draw_branches")
  final List<DrawBranches>? drawBranches;

  @JsonKey(name: "languages")
  final List<Languages>? languages;

  @JsonKey(name: "draw_rules")
  final List<DrawRule>? drawRules;

  @JsonKey(name: "draw_prizes")
  final List<DrawPrize>? drawPrizes;

  Draw({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.description,
    required this.images,
    required this.enabled,
    required this.isExpired,
    required this.drawBranches,
    required this.languages,
    required this.drawRules,
    required this.drawPrizes,
  });

  factory Draw.fromJson(Map<String, dynamic> data) => _$DrawFromJson(data);

  Map<String, dynamic> toJson() => _$DrawToJson(this);
}



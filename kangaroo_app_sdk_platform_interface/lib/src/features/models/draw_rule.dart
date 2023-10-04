/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw_rule_condition.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw_rule_condition.dart';

part 'draw_rule.g.dart';

/// A business banner.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class DrawRule {
  ///Unique draw rule id. 
  final int? drawRuleId;

  ///If this draw rule is required or not. 
  @JsonKey(name: "required")
  final bool? isRequired;

  ///If this draw rule is completed or not. 
  final bool? completed;

  final List<Languages>? languages;

  ///The draw rule title. 
  final String? text;

  final List<DrawRuleCondition>? conditions;

  DrawRule({
    required this.drawRuleId,
    required this.isRequired,
    required this.completed,
    required this.languages,
    required this.text,
    required this.conditions,
  });

  factory DrawRule.fromJson(Map<String, dynamic> data) => _$DrawRuleFromJson(data);

  Map<String, dynamic> toJson() => _$DrawRuleToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

part 'draw_rule_condition.g.dart';

/// A draw rule condition.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class DrawRuleCondition {
  ///Unique draw rule condition id. 
  final int? id;

  ///The draw rule condition title. 
  final String? title;

  ///The draw rule condition description. 
  final String? description;

  final List<Languages>? languages;

  DrawRuleCondition({
    required this.id,
    required this.title,
    required this.description,
    required this.languages,
  });

  factory DrawRuleCondition.fromJson(Map<String, dynamic> data) => _$DrawRuleConditionFromJson(data);

  Map<String, dynamic> toJson() => _$DrawRuleConditionToJson(this);
}



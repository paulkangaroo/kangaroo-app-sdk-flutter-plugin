/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/search_refinement_value.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/search_refinement_value.dart';

part 'search_refinement.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class SearchRefinement {
  @JsonKey(name: "selectionType")
  final String? selectionType;

  @JsonKey(name: "displayValue")
  final String? displayValue;

  @JsonKey(name: "refinementValues")
  final List<SearchRefinementValue>? refinementValues;

  SearchRefinement({
    required this.selectionType,
    required this.displayValue,
    required this.refinementValues,
  });

  factory SearchRefinement.fromJson(Map<String, dynamic> data) => _$SearchRefinementFromJson(data);

  Map<String, dynamic> toJson() => _$SearchRefinementToJson(this);
}



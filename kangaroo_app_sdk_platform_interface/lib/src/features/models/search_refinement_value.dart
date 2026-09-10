/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'search_refinement_value.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class SearchRefinementValue {
  @JsonKey(name: "displayName")
  final String? displayName;

  @JsonKey(name: "searchRefinementValue")
  final String? searchRefinementValue;

  SearchRefinementValue({
    required this.displayName,
    required this.searchRefinementValue,
  });

  factory SearchRefinementValue.fromJson(Map<String, dynamic> data) => _$SearchRefinementValueFromJson(data);

  Map<String, dynamic> toJson() => _$SearchRefinementValueToJson(this);
}



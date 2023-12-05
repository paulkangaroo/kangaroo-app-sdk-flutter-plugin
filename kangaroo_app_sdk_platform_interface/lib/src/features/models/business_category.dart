/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'business_category.g.dart';

/// Details about this business' category. This can be something like cafe, boutique, etc... 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class BusinessCategory {
  ///Name of this category 
  @JsonKey(name: "name")
  final String? name;

  ///Url to this category&#39;s icon 
  @JsonKey(name: "icon")
  final String? icon;

  ///Unique ategory code for this category 
  @JsonKey(name: "code")
  final String? code;

  BusinessCategory({
    required this.name,
    required this.icon,
    required this.code,
  });

  factory BusinessCategory.fromJson(Map<String, dynamic> data) => _$BusinessCategoryFromJson(data);

  Map<String, dynamic> toJson() => _$BusinessCategoryToJson(this);
}



/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'draw_branches.g.dart';

/// A draw branch.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class DrawBranches {
  ///Unique branch id. 
  @JsonKey(name: "id")
  final String? id;

  @JsonKey(name: "name")
  final String? name;

  DrawBranches({
    required this.id,
    required this.name,
  });

  factory DrawBranches.fromJson(Map<String, dynamic> data) => _$DrawBranchesFromJson(data);

  Map<String, dynamic> toJson() => _$DrawBranchesToJson(this);
}



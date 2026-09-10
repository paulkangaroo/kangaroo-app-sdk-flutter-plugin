/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'meta.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Meta {
  @JsonKey(name: "current_page")
  final int? currentPage;

  @JsonKey(name: "from")
  final int? from;

  @JsonKey(name: "path")
  final String? path;

  @JsonKey(name: "per_page")
  final int? perPage;

  @JsonKey(name: "to")
  final int? to;

  Meta({
    required this.currentPage,
    required this.from,
    required this.path,
    required this.perPage,
    required this.to,
  });

  factory Meta.fromJson(Map<String, dynamic> data) => _$MetaFromJson(data);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}



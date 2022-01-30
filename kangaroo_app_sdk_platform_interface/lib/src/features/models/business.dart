/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'business.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Business {
  ///A unique ID identifying this business. 
  final String id;

  ///The name of this business 
  final String name;

  Business({
    required this.id,
required this.name,
  });

  factory Business.fromJson(Map<String, dynamic> data) => _$BusinessFromJson(data);

  Map<String, dynamic> toJson() => _$BusinessToJson(this);
}



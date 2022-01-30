/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'transfer_to.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class TransferTo {
  final String name;

  TransferTo({
    required this.name,
  });

  factory TransferTo.fromJson(Map<String, dynamic> data) => _$TransferToFromJson(data);

  Map<String, dynamic> toJson() => _$TransferToToJson(this);
}



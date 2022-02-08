/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'transfer_from.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class TransferFrom {
  final String? name;

  TransferFrom({
    required this.name,
  });

  factory TransferFrom.fromJson(Map<String, dynamic> data) => _$TransferFromFromJson(data);

  Map<String, dynamic> toJson() => _$TransferFromToJson(this);
}



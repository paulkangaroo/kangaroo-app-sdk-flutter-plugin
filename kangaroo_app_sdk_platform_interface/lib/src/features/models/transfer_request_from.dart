/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'transfer_request_from.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransferRequestFrom {
  final String? name;

  TransferRequestFrom({
    required this.name,
  });

  factory TransferRequestFrom.fromJson(Map<String, dynamic> data) => _$TransferRequestFromFromJson(data);

  Map<String, dynamic> toJson() => _$TransferRequestFromToJson(this);
}



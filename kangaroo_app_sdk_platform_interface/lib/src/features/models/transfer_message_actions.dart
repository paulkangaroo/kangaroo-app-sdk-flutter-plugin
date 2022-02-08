/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'transfer_message_actions.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransferMessageActions {
  ///The action type. 
  final String? type;

  TransferMessageActions({
    required this.type,
  });

  factory TransferMessageActions.fromJson(Map<String, dynamic> data) => _$TransferMessageActionsFromJson(data);

  Map<String, dynamic> toJson() => _$TransferMessageActionsToJson(this);
}



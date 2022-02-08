/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'user_balance.g.dart';

/// User Profile balance data.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBalance {
  ///The number of points this user currently has. 
  final int? points;

  ///The amount of store credit in the users&#39; e-wallet. 
  final double? giftcard;

  UserBalance({
    required this.points,
    required this.giftcard,
  });

  factory UserBalance.fromJson(Map<String, dynamic> data) => _$UserBalanceFromJson(data);

  Map<String, dynamic> toJson() => _$UserBalanceToJson(this);
}



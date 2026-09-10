/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification.dart';

part 'user_business_notifications_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessNotificationsModel {
  ///A list of all notifications available to this user from a business 
  @JsonKey(name: "data")
  final List<Notification> data;

  UserBusinessNotificationsModel({
    required this.data,
  });

  factory UserBusinessNotificationsModel.fromJson(Map<String, dynamic> data) => _$UserBusinessNotificationsModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessNotificationsModelToJson(this);
}



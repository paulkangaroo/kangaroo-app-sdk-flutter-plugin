// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_notifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessNotificationsModel _$UserBusinessNotificationsModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessNotificationsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = UserBusinessNotificationsModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => Notification.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessNotificationsModelToJson(
        UserBusinessNotificationsModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

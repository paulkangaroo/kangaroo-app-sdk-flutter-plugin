// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationUpdateModel _$NotificationUpdateModelFromJson(
        Map<String, dynamic> json) =>
    NotificationUpdateModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => NotificationUpdateResponseData.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotificationUpdateModelToJson(
        NotificationUpdateModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

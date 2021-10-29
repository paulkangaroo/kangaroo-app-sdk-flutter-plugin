// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_update_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationUpdateResponseData _$NotificationUpdateResponseDataFromJson(
        Map<String, dynamic> json) =>
    NotificationUpdateResponseData(
      id: json['id'] as String,
      business: Business.fromJson(json['business'] as Map<String, dynamic>),
      allowEmail: json['allow_email'] as bool?,
      allowSms: json['allow_sms'] as bool?,
      allowPush: json['allow_push'] as bool?,
    );

Map<String, dynamic> _$NotificationUpdateResponseDataToJson(
        NotificationUpdateResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business': instance.business.toJson(),
      'allow_email': instance.allowEmail,
      'allow_sms': instance.allowSms,
      'allow_push': instance.allowPush,
    };

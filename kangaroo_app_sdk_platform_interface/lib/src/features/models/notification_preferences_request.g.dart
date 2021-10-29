// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preferences_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationPreferencesRequest _$NotificationPreferencesRequestFromJson(
        Map<String, dynamic> json) =>
    NotificationPreferencesRequest(
      id: json['id'] as String,
      business: Business.fromJson(json['business'] as Map<String, dynamic>),
      allowEmail: json['allow_email'] as bool?,
      allowSms: json['allow_sms'] as bool?,
      allowPush: json['allow_push'] as bool?,
    );

Map<String, dynamic> _$NotificationPreferencesRequestToJson(
        NotificationPreferencesRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business': instance.business.toJson(),
      'allow_email': instance.allowEmail,
      'allow_sms': instance.allowSms,
      'allow_push': instance.allowPush,
    };

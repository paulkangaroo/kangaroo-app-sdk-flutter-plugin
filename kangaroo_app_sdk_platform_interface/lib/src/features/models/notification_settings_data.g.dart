// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationSettingsData _$NotificationSettingsDataFromJson(
        Map<String, dynamic> json) =>
    NotificationSettingsData(
      id: json['id'] as String?,
      business: json['business'] == null
          ? null
          : BusinessData.fromJson(json['business'] as Map<String, dynamic>),
      allowEmail: json['allow_email'] as bool?,
      allowSms: json['allow_sms'] as bool?,
      allowPush: json['allow_push'] as bool?,
    );

Map<String, dynamic> _$NotificationSettingsDataToJson(
        NotificationSettingsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business': instance.business?.toJson(),
      'allow_email': instance.allowEmail,
      'allow_sms': instance.allowSms,
      'allow_push': instance.allowPush,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaModel _$SocialMediaModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SocialMediaModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'icon',
            'url',
            'business_action',
            'user_action_completed'
          ],
        );
        final val = SocialMediaModel(
          icon: $checkedConvert('icon', (v) => v as String?),
          url: $checkedConvert('url', (v) => v as String?),
          businessAction: $checkedConvert(
              'business_action',
              (v) => v == null
                  ? null
                  : BusinessActionModel.fromJson(v as Map<String, dynamic>)),
          userActionCompleted:
              $checkedConvert('user_action_completed', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'businessAction': 'business_action',
        'userActionCompleted': 'user_action_completed'
      },
    );

Map<String, dynamic> _$SocialMediaModelToJson(SocialMediaModel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'url': instance.url,
      'business_action': instance.businessAction?.toJson(),
      'user_action_completed': instance.userActionCompleted,
    };

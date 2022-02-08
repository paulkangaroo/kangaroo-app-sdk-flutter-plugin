// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Banner',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'type',
            'image_path',
            'link',
            'created_at',
            'published_at',
            'expires_at',
            'language'
          ],
        );
        final val = Banner(
          id: $checkedConvert('id', (v) => v as int?),
          type: $checkedConvert('type', (v) => v as int?),
          imagePath: $checkedConvert('image_path', (v) => v as String?),
          link: $checkedConvert('link', (v) => v as String?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          publishedAt: $checkedConvert('published_at', (v) => v as String?),
          expiresAt: $checkedConvert('expires_at', (v) => v as String?),
          language: $checkedConvert(
              'language',
              (v) => v == null
                  ? null
                  : Language.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'imagePath': 'image_path',
        'createdAt': 'created_at',
        'publishedAt': 'published_at',
        'expiresAt': 'expires_at'
      },
    );

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'image_path': instance.imagePath,
      'link': instance.link,
      'created_at': instance.createdAt,
      'published_at': instance.publishedAt,
      'expires_at': instance.expiresAt,
      'language': instance.language?.toJson(),
    };

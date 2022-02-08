// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) => Banner(
      id: json['id'] as int?,
      type: json['type'] as int?,
      imagePath: json['image_path'] as String?,
      link: json['link'] as String?,
      createdAt: json['created_at'] as String?,
      publishedAt: json['published_at'] as String?,
      expiresAt: json['expires_at'] as String?,
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
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

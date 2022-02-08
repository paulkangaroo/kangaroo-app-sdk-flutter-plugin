// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessData _$BusinessDataFromJson(Map<String, dynamic> json) => BusinessData(
      id: json['id'] as String?,
      name: json['name'] as String?,
      loyaltyType: json['loyalty_type'] as String?,
      conglomerate: json['conglomerate'] as String?,
      whiteLabel: json['white_label'] as String?,
      about: json['about'] as String?,
      logo: json['logo'] == null
          ? null
          : Image.fromJson(json['logo'] as Map<String, dynamic>),
      logoTransparentBackground: json['logo_transparent_background'] == null
          ? null
          : Image.fromJson(
              json['logo_transparent_background'] as Map<String, dynamic>),
      coverPhoto: json['cover_photo'] == null
          ? null
          : Image.fromJson(json['cover_photo'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : BusinessCategory.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessDataToJson(BusinessData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'loyalty_type': instance.loyaltyType,
      'conglomerate': instance.conglomerate,
      'white_label': instance.whiteLabel,
      'about': instance.about,
      'logo': instance.logo?.toJson(),
      'logo_transparent_background':
          instance.logoTransparentBackground?.toJson(),
      'cover_photo': instance.coverPhoto?.toJson(),
      'category': instance.category?.toJson(),
    };

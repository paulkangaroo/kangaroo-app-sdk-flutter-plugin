// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessData _$BusinessDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BusinessData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'name',
            'loyalty_type',
            'conglomerate',
            'white_label',
            'about',
            'logo',
            'logo_transparent_background',
            'cover_photo',
            'category',
            'default_branch',
            'balance',
            'tier_level',
            'catalog_items'
          ],
        );
        final val = BusinessData(
          id: $checkedConvert('id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          loyaltyType: $checkedConvert('loyalty_type', (v) => v as String?),
          conglomerate: $checkedConvert('conglomerate', (v) => v as String?),
          whiteLabel: $checkedConvert('white_label', (v) => v as String?),
          about: $checkedConvert('about', (v) => v as String?),
          logo: $checkedConvert(
              'logo',
              (v) => v == null
                  ? null
                  : ImageModel.fromJson(v as Map<String, dynamic>)),
          logoTransparentBackground: $checkedConvert(
              'logo_transparent_background',
              (v) => v == null
                  ? null
                  : ImageModel.fromJson(v as Map<String, dynamic>)),
          coverPhoto: $checkedConvert(
              'cover_photo',
              (v) => v == null
                  ? null
                  : ImageModel.fromJson(v as Map<String, dynamic>)),
          category: $checkedConvert(
              'category',
              (v) => v == null
                  ? null
                  : BusinessCategory.fromJson(v as Map<String, dynamic>)),
          defaultBranch: $checkedConvert(
              'default_branch',
              (v) => v == null
                  ? null
                  : Branch.fromJson(v as Map<String, dynamic>)),
          balance: $checkedConvert(
              'balance',
              (v) => v == null
                  ? null
                  : UserBalance.fromJson(v as Map<String, dynamic>)),
          tierLevel: $checkedConvert(
              'tier_level',
              (v) => v == null
                  ? null
                  : TierLevel.fromJson(v as Map<String, dynamic>)),
          catalogItems: $checkedConvert(
              'catalog_items',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => RewardModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'loyaltyType': 'loyalty_type',
        'whiteLabel': 'white_label',
        'logoTransparentBackground': 'logo_transparent_background',
        'coverPhoto': 'cover_photo',
        'defaultBranch': 'default_branch',
        'tierLevel': 'tier_level',
        'catalogItems': 'catalog_items'
      },
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
      'default_branch': instance.defaultBranch?.toJson(),
      'balance': instance.balance?.toJson(),
      'tier_level': instance.tierLevel?.toJson(),
      'catalog_items': instance.catalogItems?.map((e) => e.toJson()).toList(),
    };

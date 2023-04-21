// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_perk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierPerk _$TierPerkFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TierPerk',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'title',
            'tier_id',
            'offer_id',
            'punch_item_id',
            'enabled',
            'is_expired',
            'languages'
          ],
        );
        final val = TierPerk(
          id: $checkedConvert('id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          tierId: $checkedConvert('tier_id', (v) => v as int?),
          offerId: $checkedConvert('offer_id', (v) => v as int?),
          punchItemId: $checkedConvert('punch_item_id', (v) => v as int?),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          isExpired: $checkedConvert('is_expired', (v) => v as bool?),
          languages: $checkedConvert(
              'languages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      TierPerkTranslation.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'tierId': 'tier_id',
        'offerId': 'offer_id',
        'punchItemId': 'punch_item_id',
        'isExpired': 'is_expired'
      },
    );

Map<String, dynamic> _$TierPerkToJson(TierPerk instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'tier_id': instance.tierId,
      'offer_id': instance.offerId,
      'punch_item_id': instance.punchItemId,
      'enabled': instance.enabled,
      'is_expired': instance.isExpired,
      'languages': instance.languages?.map((e) => e.toJson()).toList(),
    };

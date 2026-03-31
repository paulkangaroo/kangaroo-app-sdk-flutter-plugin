// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Draw _$DrawFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Draw',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'start_date',
            'end_date',
            'title',
            'description',
            'images',
            'enabled',
            'is_expired',
            'draw_branches',
            'languages',
            'draw_rules',
            'draw_prizes'
          ],
        );
        final val = Draw(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          startDate: $checkedConvert('start_date', (v) => v as String?),
          endDate: $checkedConvert('end_date', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          images: $checkedConvert(
              'images',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          isExpired: $checkedConvert('is_expired', (v) => v as bool?),
          drawBranches: $checkedConvert(
              'draw_branches',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => DrawBranches.fromJson(e as Map<String, dynamic>))
                  .toList()),
          languages: $checkedConvert(
              'languages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Languages.fromJson(e as Map<String, dynamic>))
                  .toList()),
          drawRules: $checkedConvert(
              'draw_rules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => DrawRule.fromJson(e as Map<String, dynamic>))
                  .toList()),
          drawPrizes: $checkedConvert(
              'draw_prizes',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => DrawPrize.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'startDate': 'start_date',
        'endDate': 'end_date',
        'isExpired': 'is_expired',
        'drawBranches': 'draw_branches',
        'drawRules': 'draw_rules',
        'drawPrizes': 'draw_prizes'
      },
    );

Map<String, dynamic> _$DrawToJson(Draw instance) => <String, dynamic>{
      'id': instance.id,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'enabled': instance.enabled,
      'is_expired': instance.isExpired,
      'draw_branches': instance.drawBranches?.map((e) => e.toJson()).toList(),
      'languages': instance.languages?.map((e) => e.toJson()).toList(),
      'draw_rules': instance.drawRules?.map((e) => e.toJson()).toList(),
      'draw_prizes': instance.drawPrizes?.map((e) => e.toJson()).toList(),
    };

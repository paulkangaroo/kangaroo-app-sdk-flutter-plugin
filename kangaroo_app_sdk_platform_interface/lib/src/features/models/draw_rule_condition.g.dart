// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw_rule_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrawRuleCondition _$DrawRuleConditionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DrawRuleCondition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'title', 'description', 'languages'],
        );
        final val = DrawRuleCondition(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          languages: $checkedConvert(
              'languages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Languages.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$DrawRuleConditionToJson(DrawRuleCondition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'languages': instance.languages?.map((e) => e.toJson()).toList(),
    };

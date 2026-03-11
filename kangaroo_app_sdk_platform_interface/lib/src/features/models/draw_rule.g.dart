// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrawRule _$DrawRuleFromJson(Map<String, dynamic> json) => $checkedCreate(
      'DrawRule',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'draw_rule_id',
            'required',
            'completed',
            'languages',
            'text',
            'conditions'
          ],
        );
        final val = DrawRule(
          drawRuleId:
              $checkedConvert('draw_rule_id', (v) => (v as num?)?.toInt()),
          isRequired: $checkedConvert('required', (v) => v as bool?),
          completed: $checkedConvert('completed', (v) => v as bool?),
          languages: $checkedConvert(
              'languages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Languages.fromJson(e as Map<String, dynamic>))
                  .toList()),
          text: $checkedConvert('text', (v) => v as String?),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      DrawRuleCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'drawRuleId': 'draw_rule_id',
        'isRequired': 'required'
      },
    );

Map<String, dynamic> _$DrawRuleToJson(DrawRule instance) => <String, dynamic>{
      'draw_rule_id': instance.drawRuleId,
      'required': instance.isRequired,
      'completed': instance.completed,
      'languages': instance.languages?.map((e) => e.toJson()).toList(),
      'text': instance.text,
      'conditions': instance.conditions?.map((e) => e.toJson()).toList(),
    };

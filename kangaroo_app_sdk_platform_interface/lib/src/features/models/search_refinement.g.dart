// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_refinement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRefinement _$SearchRefinementFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SearchRefinement',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'selectionType',
            'displayValue',
            'refinementValues'
          ],
        );
        final val = SearchRefinement(
          selectionType: $checkedConvert('selectionType', (v) => v as String?),
          displayValue: $checkedConvert('displayValue', (v) => v as String?),
          refinementValues: $checkedConvert(
              'refinementValues',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      SearchRefinementValue.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$SearchRefinementToJson(SearchRefinement instance) =>
    <String, dynamic>{
      'selectionType': instance.selectionType,
      'displayValue': instance.displayValue,
      'refinementValues':
          instance.refinementValues?.map((e) => e.toJson()).toList(),
    };

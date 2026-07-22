// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_refinement_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRefinementValue _$SearchRefinementValueFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SearchRefinementValue',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['displayName', 'searchRefinementValue'],
        );
        final val = SearchRefinementValue(
          displayName: $checkedConvert('displayName', (v) => v as String?),
          searchRefinementValue:
              $checkedConvert('searchRefinementValue', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SearchRefinementValueToJson(
        SearchRefinementValue instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'searchRefinementValue': instance.searchRefinementValue,
    };

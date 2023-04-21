// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perform_social_media_action_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerformSocialMediaActionResponseModel
    _$PerformSocialMediaActionResponseModelFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PerformSocialMediaActionResponseModel',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              allowedKeys: const ['data'],
            );
            final val = PerformSocialMediaActionResponseModel(
              data: $checkedConvert(
                  'data',
                  (v) => v == null
                      ? null
                      : PerformActionResponseModel.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$PerformSocialMediaActionResponseModelToJson(
        PerformSocialMediaActionResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

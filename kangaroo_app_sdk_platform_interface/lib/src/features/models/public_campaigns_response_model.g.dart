// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_campaigns_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicCampaignsResponseModel _$PublicCampaignsResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicCampaignsResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicCampaignsResponseModel(
          data: $checkedConvert(
              'data',
              (v) =>
                  PublicCampaignsDataModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicCampaignsResponseModelToJson(
        PublicCampaignsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

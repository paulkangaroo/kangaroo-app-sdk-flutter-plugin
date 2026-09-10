// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVerificationResponseModel _$UserVerificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserVerificationResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = UserVerificationResponseModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserProfileDataModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserVerificationResponseModelToJson(
        UserVerificationResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

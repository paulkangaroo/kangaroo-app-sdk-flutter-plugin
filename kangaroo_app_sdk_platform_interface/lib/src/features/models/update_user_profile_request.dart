/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/address_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/address_model.dart';

part 'update_user_profile_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UpdateUserProfileRequest {
  ///The users&#39; updated first name 
  @JsonKey(name: "first_name")
  final String? firstName;

  ///The users&#39; updated last name 
  @JsonKey(name: "last_name")
  final String? lastName;

  ///The users&#39; updated date of birth. The date must be formated as \&quot;1990-11-25\&quot;  
  @JsonKey(name: "birth_date")
  final String? birthDate;

  ///The users&#39; update language. Must follow ISO 639-1 format (eg. en, fr, es)  
  @JsonKey(name: "language")
  final String? language;

  ///The users&#39; updated gender. Current accepted values are \&quot;male\&quot; and \&quot;female\&quot;  
  @JsonKey(name: "gender")
  final String? gender;

  ///A url to the users&#39; updated profile photo. If you&#39;d like to upload the photo to Kangaroo&#39;s server beforehand, use the userProfilePhotoUpload api - it will return a url that can be used in this api.  
  @JsonKey(name: "profile_photo")
  final String? profilePhoto;

  @JsonKey(name: "address")
  final AddressModel? address;

  UpdateUserProfileRequest({
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.language,
    required this.gender,
    required this.profilePhoto,
    required this.address,
  });

  factory UpdateUserProfileRequest.fromJson(Map<String, dynamic> data) => _$UpdateUserProfileRequestFromJson(data);

  Map<String, dynamic> toJson() => _$UpdateUserProfileRequestToJson(this);
}



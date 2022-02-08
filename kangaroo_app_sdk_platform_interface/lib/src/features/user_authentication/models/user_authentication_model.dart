import 'package:json_annotation/json_annotation.dart';

part 'user_authentication_model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserAuthenticationModel{
  final int expiresIn;
  final String accessToken;
  final String refreshToken;

  UserAuthenticationModel({required this.expiresIn, required this.accessToken, required this.refreshToken});
  factory UserAuthenticationModel.fromJson(Map<String, dynamic> data) => _$UserAuthenticationModelFromJson(data);
  Map<String, dynamic> toJson() => _$UserAuthenticationModelToJson(this);
}
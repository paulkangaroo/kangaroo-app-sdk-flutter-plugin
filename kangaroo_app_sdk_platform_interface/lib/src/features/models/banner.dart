/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

part 'banner.g.dart';

/// A business banner.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Banner {
  ///Unique banner id. 
  final int? id;

  ///The banner type. 
  final int? type;

  ///Phone number associated with this user. 
  final String? imagePath;

  ///First name associated with this user. 
  final String? link;

  ///Last name associated with this user. 
  final String? createdAt;

  ///Unique QR code identifying this user. 
  final String? publishedAt;

  ///Gender associated with this user. 
  final String? expiresAt;

  final Language? language;

  Banner({
    required this.id,
    required this.type,
    required this.imagePath,
    required this.link,
    required this.createdAt,
    required this.publishedAt,
    required this.expiresAt,
    required this.language,
  });

  factory Banner.fromJson(Map<String, dynamic> data) => _$BannerFromJson(data);

  Map<String, dynamic> toJson() => _$BannerToJson(this);
}



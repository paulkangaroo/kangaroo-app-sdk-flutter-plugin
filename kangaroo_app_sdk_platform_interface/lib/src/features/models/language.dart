/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'language.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Language {
  ///The Kangaroo ID of this language. 
  final int id;

  ///A two letter abbreviation of this language. Follows ISO standards (en, fr, es)  
  final String? abbreviation;

  ///The full name of this language (English, French, Spanish) 
  final String? name;

  Language({
    required this.id,
    required this.abbreviation,
    required this.name,
  });

  factory Language.fromJson(Map<String, dynamic> data) => _$LanguageFromJson(data);

  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}



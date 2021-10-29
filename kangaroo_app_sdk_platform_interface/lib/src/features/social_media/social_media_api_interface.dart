library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/social_media/social_media_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_model.dart';

abstract class SocialMediaApiInterface extends PlatformInterface {
  SocialMediaApiInterface() : super(token: _token);

  static final Object _token = Object();

  static SocialMediaApiInterface _instance = SocialMediaApiFederated();

  static SocialMediaApiInterface get instance => _instance;

  static set instance(SocialMediaApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getSocialMedia() {
    throw UnimplementedError('getSocialMedia has not been implemented.');
  }

  Stream<Result<SocialMediaModel>> get socialMediaStream {
    throw UnimplementedError('getSocialMediaStream has not been implemented.');
  }
}

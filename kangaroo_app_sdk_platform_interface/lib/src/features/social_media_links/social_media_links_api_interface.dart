library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/social_media_links/social_media_links_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_links_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_links_model.dart';

abstract class SocialMediaLinksApiInterface extends PlatformInterface {
  SocialMediaLinksApiInterface() : super(token: _token);

  static final Object _token = Object();

  static SocialMediaLinksApiInterface _instance = SocialMediaLinksApiFederated();

  static SocialMediaLinksApiInterface get instance => _instance;

  static set instance(SocialMediaLinksApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getSocialMediaLinks() {
    throw UnimplementedError('getSocialMediaLinks has not been implemented.');
  }

  Stream<Result<SocialMediaLinksModel>> get socialMediaLinksStream {
    throw UnimplementedError('getSocialMediaLinksStream has not been implemented.');
  }
}

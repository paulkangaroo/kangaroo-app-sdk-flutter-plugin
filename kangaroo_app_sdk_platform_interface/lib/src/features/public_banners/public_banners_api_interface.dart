library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_banners/public_banners_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/banners_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/banners_model.dart';

abstract class PublicBannersApiInterface extends PlatformInterface {
  PublicBannersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicBannersApiInterface _instance = PublicBannersApiFederated();

  static PublicBannersApiInterface get instance => _instance;

  static set instance(PublicBannersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getPublicBanners() {
    throw UnimplementedError('getPublicBanners has not been implemented.');
  }

  Stream<Result<BannersModel>> get publicBannersStream {
    throw UnimplementedError('getPublicBannersStream has not been implemented.');
  }
}

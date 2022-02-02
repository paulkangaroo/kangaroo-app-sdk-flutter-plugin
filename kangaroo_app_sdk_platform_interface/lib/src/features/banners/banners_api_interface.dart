library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/banners/banners_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/banners_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/banners_model.dart';

abstract class BannersApiInterface extends PlatformInterface {
  BannersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static BannersApiInterface _instance = BannersApiFederated();

  static BannersApiInterface get instance => _instance;

  static set instance(BannersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getBanners() {
    throw UnimplementedError('getBanners has not been implemented.');
  }

  Stream<Result<BannersModel>> get bannersStream {
    throw UnimplementedError('getBannersStream has not been implemented.');
  }
}

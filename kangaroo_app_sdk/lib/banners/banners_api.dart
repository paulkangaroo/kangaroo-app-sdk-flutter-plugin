import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/banners/banners_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/banners/banners_platform_interface.dart';

class BannersApi {
  static Future<Result<BannersModel>?> getBanners({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return BannersApiInterface.instance.getBanners( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<BannersModel>> get bannersStream {
    return BannersApiInterface.instance.bannersStream;
  }
}

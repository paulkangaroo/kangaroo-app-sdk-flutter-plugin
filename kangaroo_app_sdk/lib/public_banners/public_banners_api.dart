import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_banners/public_banners_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_banners/public_banners_platform_interface.dart';

class PublicBannersApi {
  static getPublicBanners() {
    PublicBannersApiInterface.instance.getPublicBanners();
  }

  static Stream<Result<BannersModel>> get publicBannersStream {
    return PublicBannersApiInterface.instance.publicBannersStream;
  }
}

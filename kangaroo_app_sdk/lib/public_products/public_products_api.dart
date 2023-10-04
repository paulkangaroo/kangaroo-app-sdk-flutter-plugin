import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_products/public_products_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_products/public_products_platform_interface.dart';

class PublicProductsApi {
  static Future<Result<PublicProductsModel>?> getPublicProducts() {
    return PublicProductsApiInterface.instance.getPublicProducts();
  }

  static Stream<Result<PublicProductsModel>> get publicProductsStream {
    return PublicProductsApiInterface.instance.publicProductsStream;
  }
}

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_a_la_carte_products/public_ala_carte_products_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_a_la_carte_products/public_ala_carte_products_platform_interface.dart';

class PublicAlaCarteProductsApi {
  static Future<Result<PublicALaCarteProductsModel>?> getPublicAlaCarteProducts() {
    return PublicAlaCarteProductsApiInterface.instance.getPublicAlaCarteProducts();
  }

  static Stream<Result<PublicALaCarteProductsModel>> get publicAlaCarteProductsStream {
    return PublicAlaCarteProductsApiInterface.instance.publicAlaCarteProductsStream;
  }
}

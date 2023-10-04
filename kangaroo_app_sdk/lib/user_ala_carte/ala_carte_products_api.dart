import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_ala_carte/ala_carte_products_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_ala_carte/ala_carte_products_platform_interface.dart';

class AlaCarteProductsApi {
  static Future<Result<AlaCarteProductsModel>?> getAlaCarteProducts() {
    return AlaCarteProductsApiInterface.instance.getAlaCarteProducts();
  }

  static Stream<Result<AlaCarteProductsModel>> get alaCarteProductsStream {
    return AlaCarteProductsApiInterface.instance.alaCarteProductsStream;
  }
}

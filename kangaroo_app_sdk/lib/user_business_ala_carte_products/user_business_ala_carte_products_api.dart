import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_ala_carte_products/user_business_ala_carte_products_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_ala_carte_products/user_business_ala_carte_products_platform_interface.dart';

class UserBusinessAlaCarteProductsApi {
  static Future<Result<AlaCarteProductsModel>?> getUserBusinessAlaCarteProducts({ 
    final Map<String, String>? overrideHeaders,
    required final String businessId,
  }) {
    return UserBusinessAlaCarteProductsApiInterface.instance.getUserBusinessAlaCarteProducts( 
      overrideHeaders: overrideHeaders,
      businessId: businessId,
    );
  }

  static Stream<Result<AlaCarteProductsModel>> get userBusinessAlaCarteProductsStream {
    return UserBusinessAlaCarteProductsApiInterface.instance.userBusinessAlaCarteProductsStream;
  }
}

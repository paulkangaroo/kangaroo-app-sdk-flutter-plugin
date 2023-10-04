import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_products/user_products_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_products/user_products_platform_interface.dart';

class UserProductsApi {
  static Future<Result<UserProductsModel>?> getUserProducts() {
    return UserProductsApiInterface.instance.getUserProducts();
  }

  static Stream<Result<UserProductsModel>> get userProductsStream {
    return UserProductsApiInterface.instance.userProductsStream;
  }
}

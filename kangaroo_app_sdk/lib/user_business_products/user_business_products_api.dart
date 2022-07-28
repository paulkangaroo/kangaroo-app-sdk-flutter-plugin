import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_products/user_business_products_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_products/user_business_products_platform_interface.dart';

class UserBusinessProductsApi {
  static getUserBusinessProducts({ 
    required final String businessId,
  }) {
    UserBusinessProductsApiInterface.instance.getUserBusinessProducts( 
      businessId: businessId,
    );
  }

  static Stream<Result<UserProductsModel>> get userBusinessProductsStream {
    return UserBusinessProductsApiInterface.instance.userBusinessProductsStream;
  }
}

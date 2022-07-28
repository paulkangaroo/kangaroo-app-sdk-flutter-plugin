library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_products/user_business_products_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_products_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_products_model.dart';

abstract class UserBusinessProductsApiInterface extends PlatformInterface {
  UserBusinessProductsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessProductsApiInterface _instance = UserBusinessProductsApiFederated();

  static UserBusinessProductsApiInterface get instance => _instance;

  static set instance(UserBusinessProductsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserBusinessProducts({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessProducts has not been implemented.');
  }

  Stream<Result<UserProductsModel>> get userBusinessProductsStream {
    throw UnimplementedError('getUserBusinessProductsStream has not been implemented.');
  }
}

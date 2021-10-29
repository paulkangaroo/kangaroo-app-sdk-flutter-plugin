library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_products/user_products_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_products_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_products_model.dart';

abstract class UserProductsApiInterface extends PlatformInterface {
  UserProductsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserProductsApiInterface _instance = UserProductsApiFederated();

  static UserProductsApiInterface get instance => _instance;

  static set instance(UserProductsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserProducts() {
    throw UnimplementedError('getUserProducts has not been implemented.');
  }

  Stream<Result<UserProductsModel>> get userProductsStream {
    throw UnimplementedError('getUserProductsStream has not been implemented.');
  }
}

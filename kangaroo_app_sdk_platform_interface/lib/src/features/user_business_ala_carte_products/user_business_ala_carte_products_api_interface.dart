library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_ala_carte_products/user_business_ala_carte_products_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_products_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_products_model.dart';

abstract class UserBusinessAlaCarteProductsApiInterface extends PlatformInterface {
  UserBusinessAlaCarteProductsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessAlaCarteProductsApiInterface _instance = UserBusinessAlaCarteProductsApiFederated();

  static UserBusinessAlaCarteProductsApiInterface get instance => _instance;

  static set instance(UserBusinessAlaCarteProductsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserBusinessAlaCarteProducts({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessAlaCarteProducts has not been implemented.');
  }

  Stream<Result<AlaCarteProductsModel>> get userBusinessAlaCarteProductsStream {
    throw UnimplementedError('getUserBusinessAlaCarteProductsStream has not been implemented.');
  }
}

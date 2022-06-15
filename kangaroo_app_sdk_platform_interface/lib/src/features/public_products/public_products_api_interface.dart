library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_products/public_products_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_products_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_products_model.dart';

abstract class PublicProductsApiInterface extends PlatformInterface {
  PublicProductsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicProductsApiInterface _instance = PublicProductsApiFederated();

  static PublicProductsApiInterface get instance => _instance;

  static set instance(PublicProductsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getPublicProducts() {
    throw UnimplementedError('getPublicProducts has not been implemented.');
  }

  Stream<Result<PublicProductsModel>> get publicProductsStream {
    throw UnimplementedError('getPublicProductsStream has not been implemented.');
  }
}

library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_a_la_carte_products/public_ala_carte_products_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_a_la_carte_products_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_a_la_carte_products_model.dart';

abstract class PublicAlaCarteProductsApiInterface extends PlatformInterface {
  PublicAlaCarteProductsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicAlaCarteProductsApiInterface _instance = PublicAlaCarteProductsApiFederated();

  static PublicAlaCarteProductsApiInterface get instance => _instance;

  static set instance(PublicAlaCarteProductsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getPublicAlaCarteProducts() {
    throw UnimplementedError('getPublicAlaCarteProducts has not been implemented.');
  }

  Stream<Result<PublicALaCarteProductsModel>> get publicAlaCarteProductsStream {
    throw UnimplementedError('getPublicAlaCarteProductsStream has not been implemented.');
  }
}

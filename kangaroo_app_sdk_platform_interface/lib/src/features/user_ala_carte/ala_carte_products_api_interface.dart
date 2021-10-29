library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_ala_carte/ala_carte_products_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_products_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_products_model.dart';

abstract class AlaCarteProductsApiInterface extends PlatformInterface {
  AlaCarteProductsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static AlaCarteProductsApiInterface _instance = AlaCarteProductsApiFederated();

  static AlaCarteProductsApiInterface get instance => _instance;

  static set instance(AlaCarteProductsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getAlaCarteProducts() {
    throw UnimplementedError('getAlaCarteProducts has not been implemented.');
  }

  Stream<Result<AlaCarteProductsModel>> get alaCarteProductsStream {
    throw UnimplementedError('getAlaCarteProductsStream has not been implemented.');
  }
}

library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_offers/public_offers_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_offers_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_offers_model.dart';

abstract class PublicOffersApiInterface extends PlatformInterface {
  PublicOffersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicOffersApiInterface _instance = PublicOffersApiFederated();

  static PublicOffersApiInterface get instance => _instance;

  static set instance(PublicOffersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getPublicOffers() {
    throw UnimplementedError('getPublicOffers has not been implemented.');
  }

  Stream<Result<UserOffersModel>> get publicOffersStream {
    throw UnimplementedError('getPublicOffersStream has not been implemented.');
  }
}

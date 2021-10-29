library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_offers/user_offers_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_offers_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_offers_model.dart';

abstract class UserOffersApiInterface extends PlatformInterface {
  UserOffersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserOffersApiInterface _instance = UserOffersApiFederated();

  static UserOffersApiInterface get instance => _instance;

  static set instance(UserOffersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserOffers() {
    throw UnimplementedError('getUserOffers has not been implemented.');
  }

  Stream<Result<UserOffersModel>> get userOffersStream {
    throw UnimplementedError('getUserOffersStream has not been implemented.');
  }
}

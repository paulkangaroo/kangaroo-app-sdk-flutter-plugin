library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_offers/user_business_offers_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_offers_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_offers_model.dart';

abstract class UserBusinessOffersApiInterface extends PlatformInterface {
  UserBusinessOffersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessOffersApiInterface _instance = UserBusinessOffersApiFederated();

  static UserBusinessOffersApiInterface get instance => _instance;

  static set instance(UserBusinessOffersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserBusinessOffers({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessOffers has not been implemented.');
  }

  Stream<Result<UserBusinessOffersModel>> get userBusinessOffersStream {
    throw UnimplementedError('getUserBusinessOffersStream has not been implemented.');
  }
}

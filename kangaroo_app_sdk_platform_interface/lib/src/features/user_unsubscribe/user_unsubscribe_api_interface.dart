library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_unsubscribe/user_unsubscribe_api_implementation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';


abstract class UserUnsubscribeApiInterface extends PlatformInterface {
  UserUnsubscribeApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserUnsubscribeApiInterface _instance = UserUnsubscribeApiFederated();

  static UserUnsubscribeApiInterface get instance => _instance;

  static set instance(UserUnsubscribeApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  unsubscribe({ 
        required final String campaignId,
        required final String token,
    }) {
    throw UnimplementedError('unsubscribe has not been implemented.');
  }

  Stream<Result<EmptyResponse>> get userUnsubscribeStream {
    throw UnimplementedError('getUserUnsubscribeStream has not been implemented.');
  }
}

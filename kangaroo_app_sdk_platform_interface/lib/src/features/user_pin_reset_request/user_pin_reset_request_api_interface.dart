library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_pin_reset_request/user_pin_reset_request_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_pin_reset_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_pin_reset_request.dart';

abstract class UserPinResetRequestApiInterface extends PlatformInterface {
  UserPinResetRequestApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserPinResetRequestApiInterface _instance = UserPinResetRequestApiFederated();

  static UserPinResetRequestApiInterface get instance => _instance;

  static set instance(UserPinResetRequestApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  requestPinReset({ 
        final String mode = "verification_code",
        final String? email,
        final String? phone,
        final String? countryCode,
    }) {
    throw UnimplementedError('requestPinReset has not been implemented.');
  }

  Stream<Result<UserPinResetRequest>> get userPinResetRequestStream {
    throw UnimplementedError('getUserPinResetRequestStream has not been implemented.');
  }
}

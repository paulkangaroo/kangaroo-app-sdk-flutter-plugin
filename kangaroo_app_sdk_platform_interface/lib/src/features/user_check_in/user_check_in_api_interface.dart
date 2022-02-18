library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_check_in/user_check_in_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/check_in_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/check_in_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/check_in_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/check_in_response_model.dart';

abstract class UserCheckInApiInterface extends PlatformInterface {
  UserCheckInApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserCheckInApiInterface _instance = UserCheckInApiFederated();

  static UserCheckInApiInterface get instance => _instance;

  static set instance(UserCheckInApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  userCheckIn({ 
        required final CheckInRequest checkInRequest,
    }) {
    throw UnimplementedError('userCheckIn has not been implemented.');
  }

  Stream<Result<CheckInResponseModel>> get userCheckInStream {
    throw UnimplementedError('getUserCheckInStream has not been implemented.');
  }
}

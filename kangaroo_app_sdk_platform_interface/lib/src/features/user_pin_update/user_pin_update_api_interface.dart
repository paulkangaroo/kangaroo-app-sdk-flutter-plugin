library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_pin_update/user_pin_update_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/update_pin_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/update_pin_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

abstract class UserPinUpdateApiInterface extends PlatformInterface {
  UserPinUpdateApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserPinUpdateApiInterface _instance = UserPinUpdateApiFederated();

  static UserPinUpdateApiInterface get instance => _instance;

  static set instance(UserPinUpdateApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  updatePin({ 
        required final UpdatePinRequest updatePinRequest,
    }) {
    throw UnimplementedError('updatePin has not been implemented.');
  }

  Stream<Result<UserProfileModel>> get userPinUpdateStream {
    throw UnimplementedError('getUserPinUpdateStream has not been implemented.');
  }
}

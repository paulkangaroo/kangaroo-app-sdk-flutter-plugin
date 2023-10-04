library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_details/user_details_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_details_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_details_model.dart';

abstract class UserDetailsApiInterface extends PlatformInterface {
  UserDetailsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserDetailsApiInterface _instance = UserDetailsApiFederated();

  static UserDetailsApiInterface get instance => _instance;

  static set instance(UserDetailsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserDetailsModel>?> getUserDetails() {
    throw UnimplementedError('getUserDetails has not been implemented.');
  }

  Stream<Result<UserDetailsModel>> get userDetailsStream {
    throw UnimplementedError('getUserDetailsStream has not been implemented.');
  }

  static Future<Result<UserDetailsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserDetailsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserDetailsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}

library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
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

Future<Result<CheckInResponseModel>?> userCheckIn({ 
        required final CheckInRequest checkInRequest,
    }) {
    throw UnimplementedError('userCheckIn has not been implemented.');
  }

  Stream<Result<CheckInResponseModel>> get userCheckInStream {
    throw UnimplementedError('getUserCheckInStream has not been implemented.');
  }

  static Future<Result<CheckInResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = CheckInResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case CheckInResponseModel:
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

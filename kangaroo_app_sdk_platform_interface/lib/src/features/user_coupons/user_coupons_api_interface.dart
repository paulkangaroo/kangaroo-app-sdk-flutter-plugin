library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_coupons/user_coupons_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_coupons_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_coupons_model.dart';

abstract class UserCouponsApiInterface extends PlatformInterface {
  UserCouponsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserCouponsApiInterface _instance = UserCouponsApiFederated();

  static UserCouponsApiInterface get instance => _instance;

  static set instance(UserCouponsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserCouponsModel>?> getUserCoupons() {
    throw UnimplementedError('getUserCoupons has not been implemented.');
  }

  Stream<Result<UserCouponsModel>> get userCouponsStream {
    throw UnimplementedError('getUserCouponsStream has not been implemented.');
  }

  static Future<Result<UserCouponsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserCouponsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserCouponsModel:
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

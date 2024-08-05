library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_coupons/user_business_coupons_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_coupons_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_coupons_model.dart';

abstract class UserBusinessCouponsApiInterface extends PlatformInterface {
  UserBusinessCouponsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessCouponsApiInterface _instance = UserBusinessCouponsApiFederated();

  static UserBusinessCouponsApiInterface get instance => _instance;

  static set instance(UserBusinessCouponsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserBusinessCouponsModel>?> getUserBusinessCoupons({ 
        final Map<String, String>? overrideHeaders,
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessCoupons has not been implemented.');
  }

  Stream<Result<UserBusinessCouponsModel>> get userBusinessCouponsStream {
    throw UnimplementedError('getUserBusinessCouponsStream has not been implemented.');
  }

  static Future<Result<UserBusinessCouponsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserBusinessCouponsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserBusinessCouponsModel:
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

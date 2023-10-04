library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_banners/user_business_banners_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_banners_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_banners_model.dart';

abstract class UserBusinessBannersApiInterface extends PlatformInterface {
  UserBusinessBannersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessBannersApiInterface _instance = UserBusinessBannersApiFederated();

  static UserBusinessBannersApiInterface get instance => _instance;

  static set instance(UserBusinessBannersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserBusinessBannersModel>?> getUserBusinessBanners({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessBanners has not been implemented.');
  }

  Stream<Result<UserBusinessBannersModel>> get userBusinessBannersStream {
    throw UnimplementedError('getUserBusinessBannersStream has not been implemented.');
  }

  static Future<Result<UserBusinessBannersModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserBusinessBannersModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserBusinessBannersModel:
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

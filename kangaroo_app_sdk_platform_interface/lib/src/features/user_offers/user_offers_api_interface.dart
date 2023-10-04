library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_offers/user_offers_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_offers_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_offers_model.dart';

abstract class UserOffersApiInterface extends PlatformInterface {
  UserOffersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserOffersApiInterface _instance = UserOffersApiFederated();

  static UserOffersApiInterface get instance => _instance;

  static set instance(UserOffersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserOffersModel>?> getUserOffers() {
    throw UnimplementedError('getUserOffers has not been implemented.');
  }

  Stream<Result<UserOffersModel>> get userOffersStream {
    throw UnimplementedError('getUserOffersStream has not been implemented.');
  }

  static Future<Result<UserOffersModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserOffersModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserOffersModel:
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

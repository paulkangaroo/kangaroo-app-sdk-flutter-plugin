library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_offers_model.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_offers/user_business_offers_api_implementation.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../../../platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_offers_model.dart';

abstract class UserBusinessOffersApiInterface extends PlatformInterface {
  UserBusinessOffersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessOffersApiInterface _instance =
      UserBusinessOffersApiFederated();

  static UserBusinessOffersApiInterface get instance => _instance;

  static set instance(UserBusinessOffersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<Result<UserBusinessOffersModel>?> getUserBusinessOffers({
    required final String businessId,
  }) {
    throw UnimplementedError('getUserBusinessOffers has not been implemented.');
  }

  Stream<Result<UserBusinessOffersModel>> get userBusinessOffersStream {
    throw UnimplementedError(
        'getUserBusinessOffersStream has not been implemented.');
  }

  static Future<Result<UserBusinessOffersModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserBusinessOffersModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserBusinessOffersModel:
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

library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_offers/public_offers_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_offers_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_offers_model.dart';

abstract class PublicOffersApiInterface extends PlatformInterface {
  PublicOffersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicOffersApiInterface _instance = PublicOffersApiFederated();

  static PublicOffersApiInterface get instance => _instance;

  static set instance(PublicOffersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserOffersModel>?> getPublicOffers() {
    throw UnimplementedError('getPublicOffers has not been implemented.');
  }

  Stream<Result<UserOffersModel>> get publicOffersStream {
    throw UnimplementedError('getPublicOffersStream has not been implemented.');
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

library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_gift_cards/user_business_gift_cards_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_gift_cards_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_gift_cards_model.dart';

abstract class UserBusinessGiftCardsApiInterface extends PlatformInterface {
  UserBusinessGiftCardsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessGiftCardsApiInterface _instance = UserBusinessGiftCardsApiFederated();

  static UserBusinessGiftCardsApiInterface get instance => _instance;

  static set instance(UserBusinessGiftCardsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserBusinessGiftCardsModel>?> getUserBusinessGiftCards({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessGiftCards has not been implemented.');
  }

  Stream<Result<UserBusinessGiftCardsModel>> get userBusinessGiftCardsStream {
    throw UnimplementedError('getUserBusinessGiftCardsStream has not been implemented.');
  }

  static Future<Result<UserBusinessGiftCardsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserBusinessGiftCardsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserBusinessGiftCardsModel:
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

library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_products/user_business_products_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_products_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_products_model.dart';

abstract class UserBusinessProductsApiInterface extends PlatformInterface {
  UserBusinessProductsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessProductsApiInterface _instance = UserBusinessProductsApiFederated();

  static UserBusinessProductsApiInterface get instance => _instance;

  static set instance(UserBusinessProductsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserProductsModel>?> getUserBusinessProducts({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessProducts has not been implemented.');
  }

  Stream<Result<UserProductsModel>> get userBusinessProductsStream {
    throw UnimplementedError('getUserBusinessProductsStream has not been implemented.');
  }

  static Future<Result<UserProductsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserProductsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserProductsModel:
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

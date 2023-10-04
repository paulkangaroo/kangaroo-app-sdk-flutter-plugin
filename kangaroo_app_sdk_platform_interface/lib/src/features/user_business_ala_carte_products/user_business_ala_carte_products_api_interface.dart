library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_ala_carte_products/user_business_ala_carte_products_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_products_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_products_model.dart';

abstract class UserBusinessAlaCarteProductsApiInterface extends PlatformInterface {
  UserBusinessAlaCarteProductsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessAlaCarteProductsApiInterface _instance = UserBusinessAlaCarteProductsApiFederated();

  static UserBusinessAlaCarteProductsApiInterface get instance => _instance;

  static set instance(UserBusinessAlaCarteProductsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<AlaCarteProductsModel>?> getUserBusinessAlaCarteProducts({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessAlaCarteProducts has not been implemented.');
  }

  Stream<Result<AlaCarteProductsModel>> get userBusinessAlaCarteProductsStream {
    throw UnimplementedError('getUserBusinessAlaCarteProductsStream has not been implemented.');
  }

  static Future<Result<AlaCarteProductsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = AlaCarteProductsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case AlaCarteProductsModel:
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

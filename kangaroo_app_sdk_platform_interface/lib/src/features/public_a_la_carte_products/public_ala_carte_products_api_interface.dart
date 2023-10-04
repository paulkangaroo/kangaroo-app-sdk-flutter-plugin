library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_a_la_carte_products/public_ala_carte_products_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_a_la_carte_products_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_a_la_carte_products_model.dart';

abstract class PublicAlaCarteProductsApiInterface extends PlatformInterface {
  PublicAlaCarteProductsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicAlaCarteProductsApiInterface _instance = PublicAlaCarteProductsApiFederated();

  static PublicAlaCarteProductsApiInterface get instance => _instance;

  static set instance(PublicAlaCarteProductsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PublicALaCarteProductsModel>?> getPublicAlaCarteProducts() {
    throw UnimplementedError('getPublicAlaCarteProducts has not been implemented.');
  }

  Stream<Result<PublicALaCarteProductsModel>> get publicAlaCarteProductsStream {
    throw UnimplementedError('getPublicAlaCarteProductsStream has not been implemented.');
  }

  static Future<Result<PublicALaCarteProductsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PublicALaCarteProductsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PublicALaCarteProductsModel:
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

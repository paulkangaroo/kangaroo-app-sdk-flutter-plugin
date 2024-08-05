library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_public_promotions/get_public_promotions_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/promotions_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/promotions_model.dart';

abstract class GetPublicPromotionsApiInterface extends PlatformInterface {
  GetPublicPromotionsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetPublicPromotionsApiInterface _instance = GetPublicPromotionsApiFederated();

  static GetPublicPromotionsApiInterface get instance => _instance;

  static set instance(GetPublicPromotionsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PromotionsModel>?> getPublicPromotions({ 
        final Map<String, String>? overrideHeaders,
        required final String campaignId,
    }) {
    throw UnimplementedError('getPublicPromotions has not been implemented.');
  }

  Stream<Result<PromotionsModel>> get getPublicPromotionsStream {
    throw UnimplementedError('getGetPublicPromotionsStream has not been implemented.');
  }

  static Future<Result<PromotionsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PromotionsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PromotionsModel:
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

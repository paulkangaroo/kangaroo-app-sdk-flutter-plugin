library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_amazon_product_variants/get_amazon_product_variants_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_response_model.dart';

abstract class GetAmazonProductVariantsApiInterface extends PlatformInterface {
  GetAmazonProductVariantsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetAmazonProductVariantsApiInterface _instance = GetAmazonProductVariantsApiFederated();

  static GetAmazonProductVariantsApiInterface get instance => _instance;

  static set instance(GetAmazonProductVariantsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<RewardResponseModel>?> getAmazonProductVariants({ 
        final Map<String, String>? overrideHeaders,
        required final int rewardId,
        required final String externalProductId,
    }) {
    throw UnimplementedError('getAmazonProductVariants has not been implemented.');
  }

  Stream<Result<RewardResponseModel>> get getAmazonProductVariantsStream {
    throw UnimplementedError('getGetAmazonProductVariantsStream has not been implemented.');
  }

  static Future<Result<RewardResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = RewardResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case RewardResponseModel:
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

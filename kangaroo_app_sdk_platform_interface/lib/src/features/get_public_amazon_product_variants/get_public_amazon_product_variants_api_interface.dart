library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_public_amazon_product_variants/get_public_amazon_product_variants_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_reward_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_reward_response_model.dart';

abstract class GetPublicAmazonProductVariantsApiInterface extends PlatformInterface {
  GetPublicAmazonProductVariantsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetPublicAmazonProductVariantsApiInterface _instance = GetPublicAmazonProductVariantsApiFederated();

  static GetPublicAmazonProductVariantsApiInterface get instance => _instance;

  static set instance(GetPublicAmazonProductVariantsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PublicRewardResponseModel>?> getPublicAmazonProductVariants({ 
        final Map<String, String>? overrideHeaders,
        required final String rewardSlug,
        required final String externalProductId,
    }) {
    throw UnimplementedError('getPublicAmazonProductVariants has not been implemented.');
  }

  Stream<Result<PublicRewardResponseModel>> get getPublicAmazonProductVariantsStream {
    throw UnimplementedError('getGetPublicAmazonProductVariantsStream has not been implemented.');
  }

  static Future<Result<PublicRewardResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PublicRewardResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PublicRewardResponseModel:
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

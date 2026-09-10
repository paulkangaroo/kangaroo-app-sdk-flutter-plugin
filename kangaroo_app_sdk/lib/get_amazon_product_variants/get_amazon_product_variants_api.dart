import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_amazon_product_variants/get_amazon_product_variants_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_amazon_product_variants/get_amazon_product_variants_platform_interface.dart';

class GetAmazonProductVariantsApi {
  static Future<Result<RewardResponseModel>?> getAmazonProductVariants({ 
    final Map<String, String>? overrideHeaders,
    required final int rewardId,
    required final String externalProductId,
  }) {
    return GetAmazonProductVariantsApiInterface.instance.getAmazonProductVariants( 
      overrideHeaders: overrideHeaders,
      rewardId: rewardId,
      externalProductId: externalProductId,
    );
  }

  static Stream<Result<RewardResponseModel>> get getAmazonProductVariantsStream {
    return GetAmazonProductVariantsApiInterface.instance.getAmazonProductVariantsStream;
  }
}

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_amazon_product_variants/get_public_amazon_product_variants_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_amazon_product_variants/get_public_amazon_product_variants_platform_interface.dart';

class GetPublicAmazonProductVariantsApi {
  static Future<Result<PublicRewardResponseModel>?> getPublicAmazonProductVariants({ 
    final Map<String, String>? overrideHeaders,
    required final String rewardSlug,
    required final String externalProductId,
  }) {
    return GetPublicAmazonProductVariantsApiInterface.instance.getPublicAmazonProductVariants( 
      overrideHeaders: overrideHeaders,
      rewardSlug: rewardSlug,
      externalProductId: externalProductId,
    );
  }

  static Stream<Result<PublicRewardResponseModel>> get getPublicAmazonProductVariantsStream {
    return GetPublicAmazonProductVariantsApiInterface.instance.getPublicAmazonProductVariantsStream;
  }
}

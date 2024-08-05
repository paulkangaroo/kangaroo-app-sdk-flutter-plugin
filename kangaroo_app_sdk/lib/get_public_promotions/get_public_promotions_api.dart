import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_promotions/get_public_promotions_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_promotions/get_public_promotions_platform_interface.dart';

class GetPublicPromotionsApi {
  static Future<Result<PromotionsModel>?> getPublicPromotions({ 
    final Map<String, String>? overrideHeaders,
    required final String campaignId,
  }) {
    return GetPublicPromotionsApiInterface.instance.getPublicPromotions( 
      overrideHeaders: overrideHeaders,
      campaignId: campaignId,
    );
  }

  static Stream<Result<PromotionsModel>> get getPublicPromotionsStream {
    return GetPublicPromotionsApiInterface.instance.getPublicPromotionsStream;
  }
}

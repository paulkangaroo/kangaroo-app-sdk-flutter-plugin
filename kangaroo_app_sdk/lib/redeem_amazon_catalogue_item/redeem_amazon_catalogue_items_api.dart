import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/redeem_amazon_catalogue_item/redeem_amazon_catalogue_items_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/redeem_amazon_catalogue_item/redeem_amazon_catalogue_items_platform_interface.dart';

class RedeemAmazonCatalogueItemsApi {
  static Future<Result<RedeemResponseModel>?> redeemAmazonCatalogueItem({ 
    final Map<String, String>? overrideHeaders,
    required final RedeemAmazonItemRequest redeemAmazonItemRequest,
  }) {
    return RedeemAmazonCatalogueItemsApiInterface.instance.redeemAmazonCatalogueItem( 
      overrideHeaders: overrideHeaders,
      redeemAmazonItemRequest: redeemAmazonItemRequest,
    );
  }

  static Stream<Result<RedeemResponseModel>> get redeemAmazonCatalogueItemsStream {
    return RedeemAmazonCatalogueItemsApiInterface.instance.redeemAmazonCatalogueItemsStream;
  }
}

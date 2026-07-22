import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_amazon_catalogue/public_amazon_catalogue_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_amazon_catalogue/public_amazon_catalogue_platform_interface.dart';

class PublicAmazonCatalogueApi {
  static Future<Result<PublicRewardsModel>?> getPublicAmazonCatalogue({ 
    final Map<String, String>? overrideHeaders,
    required final int pageNumber,
    required final int perPage,
    required final String? keywords,
    required final String? filters,
  }) {
    return PublicAmazonCatalogueApiInterface.instance.getPublicAmazonCatalogue( 
      overrideHeaders: overrideHeaders,
      pageNumber: pageNumber,
      perPage: perPage,
      keywords: keywords,
      filters: filters,
    );
  }

  static Stream<Result<PublicRewardsModel>> get publicAmazonCatalogueStream {
    return PublicAmazonCatalogueApiInterface.instance.publicAmazonCatalogueStream;
  }
}

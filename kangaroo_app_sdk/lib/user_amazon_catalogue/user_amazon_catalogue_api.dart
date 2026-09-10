import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_amazon_catalogue/user_amazon_catalogue_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_amazon_catalogue/user_amazon_catalogue_platform_interface.dart';

class UserAmazonCatalogueApi {
  static Future<Result<UserRewardsModel>?> getUserAmazonCatalogue({ 
    final Map<String, String>? overrideHeaders,
    required final int pageNumber,
    required final int perPage,
    required final String? keywords,
    required final String? filters,
  }) {
    return UserAmazonCatalogueApiInterface.instance.getUserAmazonCatalogue( 
      overrideHeaders: overrideHeaders,
      pageNumber: pageNumber,
      perPage: perPage,
      keywords: keywords,
      filters: filters,
    );
  }

  static Stream<Result<UserRewardsModel>> get userAmazonCatalogueStream {
    return UserAmazonCatalogueApiInterface.instance.userAmazonCatalogueStream;
  }
}

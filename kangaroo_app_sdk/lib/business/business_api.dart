import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/business/business_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/business/business_platform_interface.dart';

class BusinessApi {
  static Future<Result<Business>?> getBusiness({ 
    required final String businessId,
  }) {
    return BusinessApiInterface.instance.getBusiness( 
      businessId: businessId,
    );
  }

  static Stream<Result<Business>> get businessStream {
    return BusinessApiInterface.instance.businessStream;
  }
}

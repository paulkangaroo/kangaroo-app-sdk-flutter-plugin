import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/business_list/businesses_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/business_list/businesses_platform_interface.dart';

class BusinessesApi {
  static Future<Result<Businesses>?> getBusinesses() {
    return BusinessesApiInterface.instance.getBusinesses();
  }

  static Stream<Result<Businesses>> get businessesStream {
    return BusinessesApiInterface.instance.businessesStream;
  }
}

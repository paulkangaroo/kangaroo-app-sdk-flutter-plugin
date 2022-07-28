import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_default_business_id/get_default_business_id_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_default_business_id/get_default_business_id_platform_interface.dart';

class GetDefaultBusinessIdApi {
  static getDefaultBusinessId({ 
    required final String businessId,
  }) {
    GetDefaultBusinessIdApiInterface.instance.getDefaultBusinessId( 
      businessId: businessId,
    );
  }

  static Stream<Result<DefaultBusiness>> get getDefaultBusinessIdStream {
    return GetDefaultBusinessIdApiInterface.instance.getDefaultBusinessIdStream;
  }
}

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/update_default_business_id/update_default_business_id_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/update_default_business_id/update_default_business_id_platform_interface.dart';

class UpdateDefaultBusinessIdApi {
  static Future<Result<DefaultBusiness>?> updateDefaultBusinessId({ 
    final Map<String, String>? overrideHeaders,
    required final String businessId,
    required final String defaultBusinessId,
  }) {
    return UpdateDefaultBusinessIdApiInterface.instance.updateDefaultBusinessId( 
      overrideHeaders: overrideHeaders,
      businessId: businessId,
      defaultBusinessId: defaultBusinessId,
    );
  }

  static Stream<Result<DefaultBusiness>> get updateDefaultBusinessIdStream {
    return UpdateDefaultBusinessIdApiInterface.instance.updateDefaultBusinessIdStream;
  }
}

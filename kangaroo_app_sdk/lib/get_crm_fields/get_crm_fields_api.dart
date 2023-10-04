import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_crm_fields/get_crm_fields_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_crm_fields/get_crm_fields_platform_interface.dart';

class GetCrmFieldsApi {
  static Future<Result<CrmFields>?> getCrmFields() {
    return GetCrmFieldsApiInterface.instance.getCrmFields();
  }

  static Stream<Result<CrmFields>> get getCrmFieldsStream {
    return GetCrmFieldsApiInterface.instance.getCrmFieldsStream;
  }
}

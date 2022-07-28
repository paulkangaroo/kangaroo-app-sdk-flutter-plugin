library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_default_business_id/get_default_business_id_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/default_business.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/default_business.dart';

abstract class GetDefaultBusinessIdApiInterface extends PlatformInterface {
  GetDefaultBusinessIdApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetDefaultBusinessIdApiInterface _instance = GetDefaultBusinessIdApiFederated();

  static GetDefaultBusinessIdApiInterface get instance => _instance;

  static set instance(GetDefaultBusinessIdApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getDefaultBusinessId({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getDefaultBusinessId has not been implemented.');
  }

  Stream<Result<DefaultBusiness>> get getDefaultBusinessIdStream {
    throw UnimplementedError('getGetDefaultBusinessIdStream has not been implemented.');
  }
}

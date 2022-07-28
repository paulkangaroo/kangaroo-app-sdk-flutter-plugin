library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/update_default_business_id/update_default_business_id_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/default_business.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/default_business.dart';

abstract class UpdateDefaultBusinessIdApiInterface extends PlatformInterface {
  UpdateDefaultBusinessIdApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UpdateDefaultBusinessIdApiInterface _instance = UpdateDefaultBusinessIdApiFederated();

  static UpdateDefaultBusinessIdApiInterface get instance => _instance;

  static set instance(UpdateDefaultBusinessIdApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  updateDefaultBusinessId({ 
        required final String businessId,
        required final String defaultBusinessId,
    }) {
    throw UnimplementedError('updateDefaultBusinessId has not been implemented.');
  }

  Stream<Result<DefaultBusiness>> get updateDefaultBusinessIdStream {
    throw UnimplementedError('getUpdateDefaultBusinessIdStream has not been implemented.');
  }
}

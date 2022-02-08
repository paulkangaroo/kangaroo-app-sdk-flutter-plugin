library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/business_list/businesses_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/businesses.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/businesses.dart';

abstract class BusinessesApiInterface extends PlatformInterface {
  BusinessesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static BusinessesApiInterface _instance = BusinessesApiFederated();

  static BusinessesApiInterface get instance => _instance;

  static set instance(BusinessesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getBusinesses() {
    throw UnimplementedError('getBusinesses has not been implemented.');
  }

  Stream<Result<Businesses>> get businessesStream {
    throw UnimplementedError('getBusinessesStream has not been implemented.');
  }
}

library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/branches/branches_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business.dart';

abstract class BranchesApiInterface extends PlatformInterface {
  BranchesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static BranchesApiInterface _instance = BranchesApiFederated();

  static BranchesApiInterface get instance => _instance;

  static set instance(BranchesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getBusinessBranches({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getBusinessBranches has not been implemented.');
  }

  Stream<Result<Business>> get branchesStream {
    throw UnimplementedError('getBranchesStream has not been implemented.');
  }
}

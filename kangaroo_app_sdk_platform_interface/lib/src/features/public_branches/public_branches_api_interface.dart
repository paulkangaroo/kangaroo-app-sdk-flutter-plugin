library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_branches/public_branches_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_branches_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_branches_model.dart';

abstract class PublicBranchesApiInterface extends PlatformInterface {
  PublicBranchesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicBranchesApiInterface _instance = PublicBranchesApiFederated();

  static PublicBranchesApiInterface get instance => _instance;

  static set instance(PublicBranchesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getPublicBranches() {
    throw UnimplementedError('getPublicBranches has not been implemented.');
  }

  Stream<Result<PublicBranchesModel>> get publicBranchesStream {
    throw UnimplementedError('getPublicBranchesStream has not been implemented.');
  }
}

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/branches/branches_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/branches/branches_platform_interface.dart';

class BranchesApi {
  static getBusinessBranches({ 
    required final String businessId,
  }) {
    BranchesApiInterface.instance.getBusinessBranches( 
      businessId: businessId,
    );
  }

  static Stream<Result<Business>> get branchesStream {
    return BranchesApiInterface.instance.branchesStream;
  }
}

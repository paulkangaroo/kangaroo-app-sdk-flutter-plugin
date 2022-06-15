import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_branches/public_branches_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_branches/public_branches_platform_interface.dart';

class PublicBranchesApi {
  static getPublicBranches() {
    PublicBranchesApiInterface.instance.getPublicBranches();
  }

  static Stream<Result<PublicBranchesModel>> get publicBranchesStream {
    return PublicBranchesApiInterface.instance.publicBranchesStream;
  }
}

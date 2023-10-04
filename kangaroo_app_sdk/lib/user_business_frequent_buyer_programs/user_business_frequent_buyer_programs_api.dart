import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_frequent_buyer_programs/user_business_frequent_buyer_programs_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_frequent_buyer_programs/user_business_frequent_buyer_programs_platform_interface.dart';

class UserBusinessFrequentBuyerProgramsApi {
  static Future<Result<FrequentBuyerProgramsModel>?> getUserBusinessFrequentBuyerPrograms({ 
    required final String businessId,
  }) {
    return UserBusinessFrequentBuyerProgramsApiInterface.instance.getUserBusinessFrequentBuyerPrograms( 
      businessId: businessId,
    );
  }

  static Stream<Result<FrequentBuyerProgramsModel>> get userBusinessFrequentBuyerProgramsStream {
    return UserBusinessFrequentBuyerProgramsApiInterface.instance.userBusinessFrequentBuyerProgramsStream;
  }
}

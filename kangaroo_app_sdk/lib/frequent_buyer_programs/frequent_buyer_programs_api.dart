import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/frequent_buyer_programs/frequent_buyer_programs_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/frequent_buyer_programs/frequent_buyer_programs_platform_interface.dart';

class FrequentBuyerProgramsApi {
  static Future<Result<FrequentBuyerProgramsModel>?> getFrequentBuyerPrograms() {
    return FrequentBuyerProgramsApiInterface.instance.getFrequentBuyerPrograms();
  }

  static Stream<Result<FrequentBuyerProgramsModel>> get frequentBuyerProgramsStream {
    return FrequentBuyerProgramsApiInterface.instance.frequentBuyerProgramsStream;
  }
}

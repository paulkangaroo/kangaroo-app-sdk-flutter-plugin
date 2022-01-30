import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/frequent_buyer/frequent_buyer_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/frequent_buyer/frequent_buyer_platform_interface.dart';

class FrequentBuyerApi {
  static getFrequentBuyer() {
    FrequentBuyerApiInterface.instance.getFrequentBuyer();
  }

  static Stream<Result<FrequentBuyerModel>> get frequentBuyerStream {
    return FrequentBuyerApiInterface.instance.frequentBuyerStream;
  }
}

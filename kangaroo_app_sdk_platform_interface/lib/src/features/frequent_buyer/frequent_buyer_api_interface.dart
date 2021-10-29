library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/frequent_buyer/frequent_buyer_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_model.dart';

abstract class FrequentBuyerApiInterface extends PlatformInterface {
  FrequentBuyerApiInterface() : super(token: _token);

  static final Object _token = Object();

  static FrequentBuyerApiInterface _instance = FrequentBuyerApiFederated();

  static FrequentBuyerApiInterface get instance => _instance;

  static set instance(FrequentBuyerApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getFrequentBuyer() {
    throw UnimplementedError('getFrequentBuyer has not been implemented.');
  }

  Stream<Result<FrequentBuyerModel>> get frequentBuyerStream {
    throw UnimplementedError('getFrequentBuyerStream has not been implemented.');
  }
}

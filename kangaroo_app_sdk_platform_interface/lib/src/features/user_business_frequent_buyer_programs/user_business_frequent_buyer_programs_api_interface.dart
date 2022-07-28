library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_frequent_buyer_programs/user_business_frequent_buyer_programs_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_programs_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_programs_model.dart';

abstract class UserBusinessFrequentBuyerProgramsApiInterface extends PlatformInterface {
  UserBusinessFrequentBuyerProgramsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessFrequentBuyerProgramsApiInterface _instance = UserBusinessFrequentBuyerProgramsApiFederated();

  static UserBusinessFrequentBuyerProgramsApiInterface get instance => _instance;

  static set instance(UserBusinessFrequentBuyerProgramsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserBusinessFrequentBuyerPrograms({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessFrequentBuyerPrograms has not been implemented.');
  }

  Stream<Result<FrequentBuyerProgramsModel>> get userBusinessFrequentBuyerProgramsStream {
    throw UnimplementedError('getUserBusinessFrequentBuyerProgramsStream has not been implemented.');
  }
}

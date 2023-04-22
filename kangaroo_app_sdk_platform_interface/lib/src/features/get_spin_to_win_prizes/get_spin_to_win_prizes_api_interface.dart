library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_spin_to_win_prizes/get_spin_to_win_prizes_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/spin_to_win_prizes_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/spin_to_win_prizes_model.dart';

abstract class GetSpinToWinPrizesApiInterface extends PlatformInterface {
  GetSpinToWinPrizesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetSpinToWinPrizesApiInterface _instance = GetSpinToWinPrizesApiFederated();

  static GetSpinToWinPrizesApiInterface get instance => _instance;

  static set instance(GetSpinToWinPrizesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getSpinToWinPrizes({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getSpinToWinPrizes has not been implemented.');
  }

  Stream<Result<SpinToWinPrizesModel>> get getSpinToWinPrizesStream {
    throw UnimplementedError('getGetSpinToWinPrizesStream has not been implemented.');
  }
}

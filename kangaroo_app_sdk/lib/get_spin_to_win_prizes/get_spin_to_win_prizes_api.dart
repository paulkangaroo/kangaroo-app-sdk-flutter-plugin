import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_spin_to_win_prizes/get_spin_to_win_prizes_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_spin_to_win_prizes/get_spin_to_win_prizes_platform_interface.dart';

class GetSpinToWinPrizesApi {
  static getSpinToWinPrizes({ 
    required final String businessId,
  }) {
    GetSpinToWinPrizesApiInterface.instance.getSpinToWinPrizes( 
      businessId: businessId,
    );
  }

  static Stream<Result<SpinToWinPrizesModel>> get getSpinToWinPrizesStream {
    return GetSpinToWinPrizesApiInterface.instance.getSpinToWinPrizesStream;
  }
}

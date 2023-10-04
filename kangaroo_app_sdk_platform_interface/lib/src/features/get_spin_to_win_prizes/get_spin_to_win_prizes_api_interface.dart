library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
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

Future<Result<SpinToWinPrizesModel>?> getSpinToWinPrizes({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getSpinToWinPrizes has not been implemented.');
  }

  Stream<Result<SpinToWinPrizesModel>> get getSpinToWinPrizesStream {
    throw UnimplementedError('getGetSpinToWinPrizesStream has not been implemented.');
  }

  static Future<Result<SpinToWinPrizesModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = SpinToWinPrizesModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case SpinToWinPrizesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}

library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/frequent_buyer_programs/frequent_buyer_programs_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_programs_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_programs_model.dart';

abstract class FrequentBuyerProgramsApiInterface extends PlatformInterface {
  FrequentBuyerProgramsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static FrequentBuyerProgramsApiInterface _instance = FrequentBuyerProgramsApiFederated();

  static FrequentBuyerProgramsApiInterface get instance => _instance;

  static set instance(FrequentBuyerProgramsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<FrequentBuyerProgramsModel>?> getFrequentBuyerPrograms() {
    throw UnimplementedError('getFrequentBuyerPrograms has not been implemented.');
  }

  Stream<Result<FrequentBuyerProgramsModel>> get frequentBuyerProgramsStream {
    throw UnimplementedError('getFrequentBuyerProgramsStream has not been implemented.');
  }

  static Future<Result<FrequentBuyerProgramsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = FrequentBuyerProgramsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case FrequentBuyerProgramsModel:
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

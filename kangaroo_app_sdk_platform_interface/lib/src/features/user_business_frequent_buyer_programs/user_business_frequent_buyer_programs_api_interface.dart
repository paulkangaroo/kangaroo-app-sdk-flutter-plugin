library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
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

Future<Result<FrequentBuyerProgramsModel>?> getUserBusinessFrequentBuyerPrograms({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessFrequentBuyerPrograms has not been implemented.');
  }

  Stream<Result<FrequentBuyerProgramsModel>> get userBusinessFrequentBuyerProgramsStream {
    throw UnimplementedError('getUserBusinessFrequentBuyerProgramsStream has not been implemented.');
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

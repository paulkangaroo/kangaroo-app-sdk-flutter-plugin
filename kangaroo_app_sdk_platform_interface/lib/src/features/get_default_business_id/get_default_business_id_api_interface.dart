library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_default_business_id/get_default_business_id_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/default_business.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/default_business.dart';

abstract class GetDefaultBusinessIdApiInterface extends PlatformInterface {
  GetDefaultBusinessIdApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetDefaultBusinessIdApiInterface _instance = GetDefaultBusinessIdApiFederated();

  static GetDefaultBusinessIdApiInterface get instance => _instance;

  static set instance(GetDefaultBusinessIdApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<DefaultBusiness>?> getDefaultBusinessId({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getDefaultBusinessId has not been implemented.');
  }

  Stream<Result<DefaultBusiness>> get getDefaultBusinessIdStream {
    throw UnimplementedError('getGetDefaultBusinessIdStream has not been implemented.');
  }

  static Future<Result<DefaultBusiness>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = DefaultBusiness.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case DefaultBusiness:
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

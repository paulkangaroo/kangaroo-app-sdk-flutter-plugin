library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_crm_fields/get_crm_fields_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/crm_fields.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/crm_fields.dart';

abstract class GetCrmFieldsApiInterface extends PlatformInterface {
  GetCrmFieldsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetCrmFieldsApiInterface _instance = GetCrmFieldsApiFederated();

  static GetCrmFieldsApiInterface get instance => _instance;

  static set instance(GetCrmFieldsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<CrmFields>?> getCrmFields() {
    throw UnimplementedError('getCrmFields has not been implemented.');
  }

  Stream<Result<CrmFields>> get getCrmFieldsStream {
    throw UnimplementedError('getGetCrmFieldsStream has not been implemented.');
  }

  static Future<Result<CrmFields>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = CrmFields.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case CrmFields:
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

library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/strings/strings_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/application_strings_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/application_strings_model.dart';

abstract class StringsApiInterface extends PlatformInterface {
  StringsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static StringsApiInterface _instance = StringsApiFederated();

  static StringsApiInterface get instance => _instance;

  static set instance(StringsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<ApplicationStringsModel>?> getStrings() {
    throw UnimplementedError('getStrings has not been implemented.');
  }

  Stream<Result<ApplicationStringsModel>> get stringsStream {
    throw UnimplementedError('getStringsStream has not been implemented.');
  }

  static Future<Result<ApplicationStringsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = ApplicationStringsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case ApplicationStringsModel:
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

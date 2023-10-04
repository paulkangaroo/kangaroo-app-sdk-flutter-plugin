library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/draws/draws_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/draws_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/draws_model.dart';

abstract class DrawsApiInterface extends PlatformInterface {
  DrawsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static DrawsApiInterface _instance = DrawsApiFederated();

  static DrawsApiInterface get instance => _instance;

  static set instance(DrawsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<DrawsModel>?> getDraws() {
    throw UnimplementedError('getDraws has not been implemented.');
  }

  Stream<Result<DrawsModel>> get drawsStream {
    throw UnimplementedError('getDrawsStream has not been implemented.');
  }

  static Future<Result<DrawsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = DrawsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case DrawsModel:
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

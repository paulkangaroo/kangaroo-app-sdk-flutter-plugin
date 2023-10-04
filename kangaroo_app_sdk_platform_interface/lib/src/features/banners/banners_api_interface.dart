library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/banners/banners_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/banners_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/banners_model.dart';

abstract class BannersApiInterface extends PlatformInterface {
  BannersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static BannersApiInterface _instance = BannersApiFederated();

  static BannersApiInterface get instance => _instance;

  static set instance(BannersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<BannersModel>?> getBanners() {
    throw UnimplementedError('getBanners has not been implemented.');
  }

  Stream<Result<BannersModel>> get bannersStream {
    throw UnimplementedError('getBannersStream has not been implemented.');
  }

  static Future<Result<BannersModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = BannersModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case BannersModel:
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

library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_branches/public_branches_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_branches_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_branches_model.dart';

abstract class PublicBranchesApiInterface extends PlatformInterface {
  PublicBranchesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicBranchesApiInterface _instance = PublicBranchesApiFederated();

  static PublicBranchesApiInterface get instance => _instance;

  static set instance(PublicBranchesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PublicBranchesModel>?> getPublicBranches() {
    throw UnimplementedError('getPublicBranches has not been implemented.');
  }

  Stream<Result<PublicBranchesModel>> get publicBranchesStream {
    throw UnimplementedError('getPublicBranchesStream has not been implemented.');
  }

  static Future<Result<PublicBranchesModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PublicBranchesModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PublicBranchesModel:
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

library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/branches/branches_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business.dart';

abstract class BranchesApiInterface extends PlatformInterface {
  BranchesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static BranchesApiInterface _instance = BranchesApiFederated();

  static BranchesApiInterface get instance => _instance;

  static set instance(BranchesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<Business>?> getBusinessBranches({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getBusinessBranches has not been implemented.');
  }

  Stream<Result<Business>> get branchesStream {
    throw UnimplementedError('getBranchesStream has not been implemented.');
  }

  static Future<Result<Business>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = Business.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case Business:
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

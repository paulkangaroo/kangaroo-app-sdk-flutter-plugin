library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/conglomerate_memberships/conglomerate_memberships_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/businesses.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/businesses.dart';

abstract class ConglomerateMembershipsApiInterface extends PlatformInterface {
  ConglomerateMembershipsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static ConglomerateMembershipsApiInterface _instance = ConglomerateMembershipsApiFederated();

  static ConglomerateMembershipsApiInterface get instance => _instance;

  static set instance(ConglomerateMembershipsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<Businesses>?> getConglomerateMemberships({ 
        final Map<String, String>? overrideHeaders,

    }) {
    throw UnimplementedError('getConglomerateMemberships has not been implemented.');
  }

  Stream<Result<Businesses>> get conglomerateMembershipsStream {
    throw UnimplementedError('getConglomerateMembershipsStream has not been implemented.');
  }

  static Future<Result<Businesses>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = Businesses.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case Businesses:
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

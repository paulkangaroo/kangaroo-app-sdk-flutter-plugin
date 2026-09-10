library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/geofences/geofences_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/geofences_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/geofences_model.dart';

abstract class GeofencesApiInterface extends PlatformInterface {
  GeofencesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GeofencesApiInterface _instance = GeofencesApiFederated();

  static GeofencesApiInterface get instance => _instance;

  static set instance(GeofencesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<GeofencesModel>?> getBusinessGeofences({ 
        final Map<String, String>? overrideHeaders,
        required final int pageNumber,
        required final int perPage,
    }) {
    throw UnimplementedError('getBusinessGeofences has not been implemented.');
  }

  Stream<Result<GeofencesModel>> get geofencesStream {
    throw UnimplementedError('getGeofencesStream has not been implemented.');
  }

  static Future<Result<GeofencesModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = GeofencesModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case GeofencesModel:
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

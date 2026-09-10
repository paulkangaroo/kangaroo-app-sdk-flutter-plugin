library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/trigger_geofence/trigger_geofences_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/trigger_geofence_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/trigger_geofence_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/trigger_geofence_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/trigger_geofence_response_model.dart';

abstract class TriggerGeofencesApiInterface extends PlatformInterface {
  TriggerGeofencesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static TriggerGeofencesApiInterface _instance = TriggerGeofencesApiFederated();

  static TriggerGeofencesApiInterface get instance => _instance;

  static set instance(TriggerGeofencesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<TriggerGeofenceResponseModel>?> triggerGeofence({ 
        final Map<String, String>? overrideHeaders,
        required final TriggerGeofenceRequest triggerGeofenceRequest,
    }) {
    throw UnimplementedError('triggerGeofence has not been implemented.');
  }

  Stream<Result<TriggerGeofenceResponseModel>> get triggerGeofencesStream {
    throw UnimplementedError('getTriggerGeofencesStream has not been implemented.');
  }

  static Future<Result<TriggerGeofenceResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = TriggerGeofenceResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case TriggerGeofenceResponseModel:
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

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/trigger_geofence/trigger_geofences_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/trigger_geofence_request.dart';

class TriggerGeofencesApiFederated extends TriggerGeofencesApiInterface {
  @override
Future<Result<TriggerGeofenceResponseModel>?> triggerGeofence({ 
        final Map<String, String>? overrideHeaders,
        required final TriggerGeofenceRequest triggerGeofenceRequest
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/trigger_geofence',
    {
      'overrideHeaders' : overrideHeaders,
      'triggerGeofenceRequest' : jsonEncode(triggerGeofenceRequest)
    }
    );

    return TriggerGeofencesApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _triggerGeofencesEvent =
      const EventChannel("customer_sdk/events/trigger_geofence");

  @override
  Stream<Result<TriggerGeofenceResponseModel>> get triggerGeofencesStream {
    return _triggerGeofencesEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = TriggerGeofenceResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case TriggerGeofenceResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

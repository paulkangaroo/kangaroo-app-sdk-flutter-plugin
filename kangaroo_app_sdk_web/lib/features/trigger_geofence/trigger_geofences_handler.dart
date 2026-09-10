// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/trigger_geofence/trigger_geofences_platform_interface.dart';


class TriggerGeofencesHandler extends TriggerGeofencesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    TriggerGeofencesApiInterface.instance = TriggerGeofencesHandler();
  }

  @override
  triggerGeofence({ 
      final Map<String, String>? overrideHeaders,
        required final TriggerGeofenceRequest triggerGeofenceRequest
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        TriggerGeofencesApi().triggerGeofence(
        jsonEncode(overrideHeaders),
        jsonEncode(triggerGeofenceRequest)
    ),);

    return TriggerGeofencesApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<TriggerGeofenceResponseModel>> get triggerGeofencesStream {
    var controller = StreamController<String>();

    TriggerGeofencesApi().observeTriggerGeofencesState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
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

@JS('js.features.triggerGeofence.TriggerGeofencesApi')
class TriggerGeofencesApi {
  external TriggerGeofencesApi();

  external dynamic triggerGeofence( 
        String? overrideHeaders, 
        String triggerGeofenceRequest
    );

  external void observeTriggerGeofencesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}


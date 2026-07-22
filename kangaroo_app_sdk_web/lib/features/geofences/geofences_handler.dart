// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/geofences/geofences_platform_interface.dart';


class GeofencesHandler extends GeofencesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GeofencesApiInterface.instance = GeofencesHandler();
  }

  @override
  getBusinessGeofences({ 
      final Map<String, String>? overrideHeaders,
        required final int pageNumber,
        required final int perPage
    }) {
    final Future<String?> request = GeofencesApi().getBusinessGeofences(
        jsonEncode(overrideHeaders),
        pageNumber,
      perPage
    ).toDart.then((value) => value?.toDart);

    return GeofencesApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<GeofencesModel>> get geofencesStream {
    var controller = StreamController<String>();

    GeofencesApi().observeGeofencesState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = GeofencesModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case GeofencesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.geofences.GeofencesApi')
extension type GeofencesApi._(JSObject _) implements JSObject {
  external factory GeofencesApi();

  external JSPromise<JSString?> getBusinessGeofences( 
        String? overrideHeaders, 
        int pageNumber,
        int perPage
    );

  external void observeGeofencesState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}


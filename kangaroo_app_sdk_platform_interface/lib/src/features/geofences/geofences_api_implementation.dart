import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/geofences/geofences_api_interface.dart';



class GeofencesApiFederated extends GeofencesApiInterface {
  @override
Future<Result<GeofencesModel>?> getBusinessGeofences({ 
        final Map<String, String>? overrideHeaders,
        required final int pageNumber,
        required final int perPage
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_business_geofences',
    {
      'overrideHeaders' : overrideHeaders,
      'pageNumber' : pageNumber,
      'perPage' : perPage
    }
    );

    return GeofencesApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _geofencesEvent =
      const EventChannel("customer_sdk/events/get_business_geofences");

  @override
  Stream<Result<GeofencesModel>> get geofencesStream {
    return _geofencesEvent.receiveBroadcastStream().distinct().map((event) {
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

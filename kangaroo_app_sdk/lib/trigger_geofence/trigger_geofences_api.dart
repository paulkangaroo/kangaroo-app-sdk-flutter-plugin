import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/trigger_geofence/trigger_geofences_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/trigger_geofence/trigger_geofences_platform_interface.dart';

class TriggerGeofencesApi {
  static Future<Result<TriggerGeofenceResponseModel>?> triggerGeofence({ 
    final Map<String, String>? overrideHeaders,
    required final TriggerGeofenceRequest triggerGeofenceRequest,
  }) {
    return TriggerGeofencesApiInterface.instance.triggerGeofence( 
      overrideHeaders: overrideHeaders,
      triggerGeofenceRequest: triggerGeofenceRequest,
    );
  }

  static Stream<Result<TriggerGeofenceResponseModel>> get triggerGeofencesStream {
    return TriggerGeofencesApiInterface.instance.triggerGeofencesStream;
  }
}

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/geofences/geofences_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/geofences/geofences_platform_interface.dart';

class GeofencesApi {
  static Future<Result<GeofencesModel>?> getBusinessGeofences({ 
    final Map<String, String>? overrideHeaders,
    required final int pageNumber,
    required final int perPage,
  }) {
    return GeofencesApiInterface.instance.getBusinessGeofences( 
      overrideHeaders: overrideHeaders,
      pageNumber: pageNumber,
      perPage: perPage,
    );
  }

  static Stream<Result<GeofencesModel>> get geofencesStream {
    return GeofencesApiInterface.instance.geofencesStream;
  }
}

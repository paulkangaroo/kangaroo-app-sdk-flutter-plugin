import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/conglomerate_memberships/conglomerate_memberships_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/conglomerate_memberships/conglomerate_memberships_platform_interface.dart';

class ConglomerateMembershipsApi {
  static Future<Result<Businesses>?> getConglomerateMemberships({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return ConglomerateMembershipsApiInterface.instance.getConglomerateMemberships( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<Businesses>> get conglomerateMembershipsStream {
    return ConglomerateMembershipsApiInterface.instance.conglomerateMembershipsStream;
  }
}

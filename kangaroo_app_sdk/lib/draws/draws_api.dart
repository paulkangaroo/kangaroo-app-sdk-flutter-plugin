import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/draws/draws_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/draws/draws_platform_interface.dart';

class DrawsApi {
  static Future<Result<DrawsModel>?> getDraws() {
    return DrawsApiInterface.instance.getDraws();
  }

  static Stream<Result<DrawsModel>> get drawsStream {
    return DrawsApiInterface.instance.drawsStream;
  }
}

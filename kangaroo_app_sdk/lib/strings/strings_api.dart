import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/strings/strings_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/strings/strings_platform_interface.dart';

class StringsApi {
  static Future<Result<ApplicationStringsModel>?> getStrings() {
    return StringsApiInterface.instance.getStrings();
  }

  static Stream<Result<ApplicationStringsModel>> get stringsStream {
    return StringsApiInterface.instance.stringsStream;
  }
}

library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/strings/strings_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/application_strings_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/application_strings_model.dart';

abstract class StringsApiInterface extends PlatformInterface {
  StringsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static StringsApiInterface _instance = StringsApiFederated();

  static StringsApiInterface get instance => _instance;

  static set instance(StringsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getStrings() {
    throw UnimplementedError('getStrings has not been implemented.');
  }

  Stream<Result<ApplicationStringsModel>> get stringsStream {
    throw UnimplementedError('getStringsStream has not been implemented.');
  }
}

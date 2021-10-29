library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/countries/countries_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/countries.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/countries.dart';

abstract class CountriesApiInterface extends PlatformInterface {
  CountriesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static CountriesApiInterface _instance = CountriesApiFederated();

  static CountriesApiInterface get instance => _instance;

  static set instance(CountriesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getCountries() {
    throw UnimplementedError('getCountries has not been implemented.');
  }

  Stream<Result<Countries>> get countriesStream {
    throw UnimplementedError('getCountriesStream has not been implemented.');
  }
}

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/countries/countries_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/countries/countries_platform_interface.dart';

class CountriesApi {
  static getCountries() {
    CountriesApiInterface.instance.getCountries();
  }

  static Stream<Result<Countries>> get countriesStream {
    return CountriesApiInterface.instance.countriesStream;
  }
}

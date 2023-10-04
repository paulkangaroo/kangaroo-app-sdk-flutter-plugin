library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
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

Future<Result<Countries>?> getCountries() {
    throw UnimplementedError('getCountries has not been implemented.');
  }

  Stream<Result<Countries>> get countriesStream {
    throw UnimplementedError('getCountriesStream has not been implemented.');
  }

  static Future<Result<Countries>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = Countries.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case Countries:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}

// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/countries/countries_platform_interface.dart';


class CountriesHandler extends CountriesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    CountriesApiInterface.instance = CountriesHandler();
  }

  @override
  getCountries() {
    CountriesApi().getCountries();
  }

  @override
  Stream<Result<Countries>> get countriesStream {
    var controller = StreamController<String>();

    CountriesApi().observeCountriesState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = Countries.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case Countries:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.countries.CountriesApi')
class CountriesApi {
  external CountriesApi();

  external void getCountries();

  external void observeCountriesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}


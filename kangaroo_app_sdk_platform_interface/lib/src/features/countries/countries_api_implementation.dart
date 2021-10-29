import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/countries/countries_api_interface.dart';



class CountriesApiFederated extends CountriesApiInterface {
  @override
  getCountries() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_countries');
  }

  static const EventChannel _countriesEvent =
      const EventChannel("customer_sdk/events/get_countries");

  @override
  Stream<Result<Countries>> get countriesStream {
    return _countriesEvent.receiveBroadcastStream().distinct().map((event) {
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

// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/frequent_buyer/frequent_buyer_platform_interface.dart';


class FrequentBuyerHandler extends FrequentBuyerApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    FrequentBuyerApiInterface.instance = FrequentBuyerHandler();
  }

  @override
  getFrequentBuyer() {
    FrequentBuyerApi().getFrequentBuyer();
  }

  @override
  Stream<Result<FrequentBuyerModel>> get frequentBuyerStream {
    var controller = StreamController<String>();

    FrequentBuyerApi().observeFrequentBuyerState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = FrequentBuyerModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case FrequentBuyerModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.frequentBuyer.FrequentBuyerApi')
class FrequentBuyerApi {
  external FrequentBuyerApi();

  external void getFrequentBuyer();

  external void observeFrequentBuyerState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}


// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/strings/strings_platform_interface.dart';


class StringsHandler extends StringsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    StringsApiInterface.instance = StringsHandler();
  }

  @override
  getStrings() {
    StringsApi().getStrings();
  }

  @override
  Stream<Result<ApplicationStringsModel>> get stringsStream {
    var controller = StreamController<String>();

    StringsApi().observeStringsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = ApplicationStringsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case ApplicationStringsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.strings.StringsApi')
class StringsApi {
  external StringsApi();

  external void getStrings();

  external void observeStringsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}


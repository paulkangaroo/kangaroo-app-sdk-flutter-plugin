// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
  getStrings({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = StringsApi().getStrings(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return StringsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<ApplicationStringsModel>> get stringsStream {
    var controller = StreamController<String>();

    StringsApi().observeStringsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type StringsApi._(JSObject _) implements JSObject {
  external factory StringsApi();

  external JSPromise<JSString?> getStrings( 
        String? overrideHeaders, 

    );

  external void observeStringsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}


// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/frequent_buyer_programs/frequent_buyer_programs_platform_interface.dart';


class FrequentBuyerProgramsHandler extends FrequentBuyerProgramsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    FrequentBuyerProgramsApiInterface.instance = FrequentBuyerProgramsHandler();
  }

  @override
  getFrequentBuyerPrograms({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = FrequentBuyerProgramsApi().getFrequentBuyerPrograms(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return FrequentBuyerProgramsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<FrequentBuyerProgramsModel>> get frequentBuyerProgramsStream {
    var controller = StreamController<String>();

    FrequentBuyerProgramsApi().observeFrequentBuyerProgramsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = FrequentBuyerProgramsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case FrequentBuyerProgramsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.frequentBuyerPrograms.FrequentBuyerProgramsApi')
extension type FrequentBuyerProgramsApi._(JSObject _) implements JSObject {
  external factory FrequentBuyerProgramsApi();

  external JSPromise<JSString?> getFrequentBuyerPrograms( 
        String? overrideHeaders, 

    );

  external void observeFrequentBuyerProgramsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}


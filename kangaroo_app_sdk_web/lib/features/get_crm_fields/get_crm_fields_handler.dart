// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_crm_fields/get_crm_fields_platform_interface.dart';


class GetCrmFieldsHandler extends GetCrmFieldsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GetCrmFieldsApiInterface.instance = GetCrmFieldsHandler();
  }

  @override
  getCrmFields({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = GetCrmFieldsApi().getCrmFields(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return GetCrmFieldsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<CrmFields>> get getCrmFieldsStream {
    var controller = StreamController<String>();

    GetCrmFieldsApi().observeGetCrmFieldsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = CrmFields.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case CrmFields:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.getCrmFields.GetCrmFieldsApi')
extension type GetCrmFieldsApi._(JSObject _) implements JSObject {
  external factory GetCrmFieldsApi();

  external JSPromise<JSString?> getCrmFields( 
        String? overrideHeaders, 

    );

  external void observeGetCrmFieldsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

